import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_args.dart';
import 'scope_state.dart';
import 'scope_target.dart';
import 'scope_timeouts.dart';

/// Manages a Network Flow Monitor Scope.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.networkflowmonitor.Scope("example", {
///     targets: [{
///         targetIdentifier: {
///             targetId: {
///                 accountId: current.then(current => current.accountId),
///             },
///             targetType: "ACCOUNT",
///         },
///         region: "us-east-1",
///     }],
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.networkflowmonitor.Scope("example",
///     targets=[{
///         "target_identifier": {
///             "target_id": {
///                 "account_id": current.account_id,
///             },
///             "target_type": "ACCOUNT",
///         },
///         "region": "us-east-1",
///     }],
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Networkflowmonitor.Scope("example", new()
///     {
///         Targets = new[]
///         {
///             new Aws.Networkflowmonitor.Inputs.ScopeTargetArgs
///             {
///                 TargetIdentifier = new Aws.Networkflowmonitor.Inputs.ScopeTargetTargetIdentifierArgs
///                 {
///                     TargetId = new Aws.Networkflowmonitor.Inputs.ScopeTargetTargetIdentifierTargetIdArgs
///                     {
///                         AccountId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                     },
///                     TargetType = "ACCOUNT",
///                 },
///                 Region = "us-east-1",
///             },
///         },
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkflowmonitor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkflowmonitor.NewScope(ctx, "example", &networkflowmonitor.ScopeArgs{
/// 			Targets: networkflowmonitor.ScopeTargetArray{
/// 				&networkflowmonitor.ScopeTargetArgs{
/// 					TargetIdentifier: &networkflowmonitor.ScopeTargetTargetIdentifierArgs{
/// 						TargetId: &networkflowmonitor.ScopeTargetTargetIdentifierTargetIdArgs{
/// 							AccountId: pulumi.String(current.AccountId),
/// 						},
/// 						TargetType: pulumi.String("ACCOUNT"),
/// 					},
/// 					Region: pulumi.String("us-east-1"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_networkflowmonitor_scope" "example" {
///   targets {
///     target_identifier = {
///       target_id = {
///         account_id = data.aws_getcalleridentity.current.account_id
///       }
///       target_type = "ACCOUNT"
///     }
///     region = "us-east-1"
///   }
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.networkflowmonitor.Scope;
/// import com.pulumi.aws.networkflowmonitor.ScopeArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.ScopeTargetArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.ScopeTargetTargetIdentifierArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.ScopeTargetTargetIdentifierTargetIdArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Scope("example", ScopeArgs.builder()
///             .targets(ScopeTargetArgs.builder()
///                 .targetIdentifier(ScopeTargetTargetIdentifierArgs.builder()
///                     .targetId(ScopeTargetTargetIdentifierTargetIdArgs.builder()
///                         .accountId(current.accountId())
///                         .build())
///                     .targetType("ACCOUNT")
///                     .build())
///                 .region("us-east-1")
///                 .build())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkflowmonitor:Scope
///     properties:
///       targets:
///         - targetIdentifier:
///             targetId:
///               accountId: ${current.accountId}
///             targetType: ACCOUNT
///           region: us-east-1
///       tags:
///         Name: example
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Flow Monitor Scope using the scope ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkflowmonitor/scope:Scope example example-scope-id
/// ```
class Scope extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the scope.
  late final pulumi.Output<String> scopeArn;
  /// The identifier for the scope that includes the resources you want to get data results for.
  late final pulumi.Output<String> scopeId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<ScopeTarget>> targets;
  late final pulumi.Output<ScopeTimeouts?> timeouts;

  /// Creates a new [Scope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scope]. {@macro pulumi_networkflowmonitor_scope_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scope(
    String name, {
    ScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/scope:Scope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    scopeArn = registerOutput<String>('scopeArn');
    scopeId = registerOutput<String>('scopeId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targets = registerOutput<List<ScopeTarget>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeTarget>(guardedValue, (value) => ScopeTarget.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<ScopeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Scope] resource's state with the given [name] and [id].
  static Scope get(
    String name,
    pulumi.Input<String> id, {
    ScopeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Scope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Scope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/scope:Scope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    scopeArn = registerOutput<String>('scopeArn');
    scopeId = registerOutput<String>('scopeId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targets = registerOutput<List<ScopeTarget>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeTarget>(guardedValue, (value) => ScopeTarget.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<ScopeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Scope] resource.
  Scope.reference(String urn)
    : super(
        'aws:networkflowmonitor/scope:Scope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    scopeArn = registerOutput<String>('scopeArn');
    scopeId = registerOutput<String>('scopeId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targets = registerOutput<List<ScopeTarget>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScopeTarget>(guardedValue, (value) => ScopeTarget.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<ScopeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
