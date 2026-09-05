import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_security_group_args.dart';
import 'input_security_group_state.dart';
import 'input_security_group_whitelist_rule.dart';

/// Manages an AWS MediaLive Input Security Group.
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
/// const example = new aws.medialive.InputSecurityGroup("example", {
///     whitelistRules: [{
///         cidr: "10.0.0.8/32",
///     }],
///     tags: {
///         ENVIRONMENT: "prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.medialive.InputSecurityGroup("example",
///     whitelist_rules=[{
///         "cidr": "10.0.0.8/32",
///     }],
///     tags={
///         "ENVIRONMENT": "prod",
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
///     var example = new Aws.MediaLive.InputSecurityGroup("example", new()
///     {
///         WhitelistRules = new[]
///         {
///             new Aws.MediaLive.Inputs.InputSecurityGroupWhitelistRuleArgs
///             {
///                 Cidr = "10.0.0.8/32",
///             },
///         },
///         Tags =
///         {
///             { "ENVIRONMENT", "prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := medialive.NewInputSecurityGroup(ctx, "example", &medialive.InputSecurityGroupArgs{
/// 			WhitelistRules: medialive.InputSecurityGroupWhitelistRuleArray{
/// 				&medialive.InputSecurityGroupWhitelistRuleArgs{
/// 					Cidr: pulumi.String("10.0.0.8/32"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ENVIRONMENT": pulumi.String("prod"),
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
/// resource "aws_medialive_inputsecuritygroup" "example" {
///   whitelist_rules {
///     cidr = "10.0.0.8/32"
///   }
///   tags = {
///     "ENVIRONMENT" = "prod"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.medialive.InputSecurityGroup;
/// import com.pulumi.aws.medialive.InputSecurityGroupArgs;
/// import com.pulumi.aws.medialive.inputs.InputSecurityGroupWhitelistRuleArgs;
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
///         var example = new InputSecurityGroup("example", InputSecurityGroupArgs.builder()
///             .whitelistRules(InputSecurityGroupWhitelistRuleArgs.builder()
///                 .cidr("10.0.0.8/32")
///                 .build())
///             .tags(Map.of("ENVIRONMENT", "prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:medialive:InputSecurityGroup
///     properties:
///       whitelistRules:
///         - cidr: 10.0.0.8/32
///       tags:
///         ENVIRONMENT: prod
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Input Security Group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import MediaLive Input Security Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/inputSecurityGroup:InputSecurityGroup example 123456
/// ```
class InputSecurityGroup extends pulumi.CustomResource {
  /// ARN of the InputSecurityGroup.
  late final pulumi.Output<String> arn;
  /// The list of inputs currently using this InputSecurityGroup.
  late final pulumi.Output<List<String>> inputs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<InputSecurityGroupWhitelistRule>> whitelistRules;

  /// Creates a new [InputSecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InputSecurityGroup]. {@macro pulumi_medialive_input_security_group_input_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InputSecurityGroup(
    String name, {
    InputSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/inputSecurityGroup:InputSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    inputs = registerOutput<List<String>>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    whitelistRules = registerOutput<List<InputSecurityGroupWhitelistRule>>('whitelistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(guardedValue, (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [InputSecurityGroup] resource's state with the given [name] and [id].
  static InputSecurityGroup get(
    String name,
    pulumi.Input<String> id, {
    InputSecurityGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InputSecurityGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InputSecurityGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/inputSecurityGroup:InputSecurityGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    inputs = registerOutput<List<String>>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    whitelistRules = registerOutput<List<InputSecurityGroupWhitelistRule>>('whitelistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(guardedValue, (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [InputSecurityGroup] resource.
  InputSecurityGroup.reference(String urn)
    : super(
        'aws:medialive/inputSecurityGroup:InputSecurityGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    inputs = registerOutput<List<String>>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    whitelistRules = registerOutput<List<InputSecurityGroupWhitelistRule>>('whitelistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(guardedValue, (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
