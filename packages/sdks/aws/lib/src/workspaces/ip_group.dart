import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_args.dart';
import 'ip_group_rule.dart';
import 'ip_group_state.dart';

/// Provides an IP access control group in AWS WorkSpaces Service
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const contractors = new aws.workspaces.IpGroup("contractors", {
///     rules: [
///         {
///             source: "150.24.14.0/24",
///             description: "NY",
///         },
///         {
///             source: "125.191.14.85/32",
///             description: "LA",
///         },
///         {
///             source: "44.98.100.0/24",
///             description: "STL",
///         },
///     ],
///     name: "Contractors",
///     description: "Contractors IP access control group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// contractors = aws.workspaces.IpGroup("contractors",
///     rules=[
///         {
///             "source": "150.24.14.0/24",
///             "description": "NY",
///         },
///         {
///             "source": "125.191.14.85/32",
///             "description": "LA",
///         },
///         {
///             "source": "44.98.100.0/24",
///             "description": "STL",
///         },
///     ],
///     name="Contractors",
///     description="Contractors IP access control group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contractors = new Aws.Workspaces.IpGroup("contractors", new()
///     {
///         Rules = new[]
///         {
///             new Aws.Workspaces.Inputs.IpGroupRuleArgs
///             {
///                 Source = "150.24.14.0/24",
///                 Description = "NY",
///             },
///             new Aws.Workspaces.Inputs.IpGroupRuleArgs
///             {
///                 Source = "125.191.14.85/32",
///                 Description = "LA",
///             },
///             new Aws.Workspaces.Inputs.IpGroupRuleArgs
///             {
///                 Source = "44.98.100.0/24",
///                 Description = "STL",
///             },
///         },
///         Name = "Contractors",
///         Description = "Contractors IP access control group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.NewIpGroup(ctx, "contractors", &workspaces.IpGroupArgs{
/// 			Rules: workspaces.IpGroupRuleArray{
/// 				&workspaces.IpGroupRuleArgs{
/// 					Source:      pulumi.String("150.24.14.0/24"),
/// 					Description: pulumi.String("NY"),
/// 				},
/// 				&workspaces.IpGroupRuleArgs{
/// 					Source:      pulumi.String("125.191.14.85/32"),
/// 					Description: pulumi.String("LA"),
/// 				},
/// 				&workspaces.IpGroupRuleArgs{
/// 					Source:      pulumi.String("44.98.100.0/24"),
/// 					Description: pulumi.String("STL"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("Contractors"),
/// 			Description: pulumi.String("Contractors IP access control group"),
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
/// resource "aws_workspaces_ipgroup" "contractors" {
///   rules {
///     source      = "150.24.14.0/24"
///     description = "NY"
///   }
///   rules {
///     source      = "125.191.14.85/32"
///     description = "LA"
///   }
///   rules {
///     source      = "44.98.100.0/24"
///     description = "STL"
///   }
///   name        = "Contractors"
///   description = "Contractors IP access control group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.IpGroup;
/// import com.pulumi.aws.workspaces.IpGroupArgs;
/// import com.pulumi.aws.workspaces.inputs.IpGroupRuleArgs;
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
///         var contractors = new IpGroup("contractors", IpGroupArgs.builder()
///             .rules(
///                 IpGroupRuleArgs.builder()
///                     .source("150.24.14.0/24")
///                     .description("NY")
///                     .build(),
///                 IpGroupRuleArgs.builder()
///                     .source("125.191.14.85/32")
///                     .description("LA")
///                     .build(),
///                 IpGroupRuleArgs.builder()
///                     .source("44.98.100.0/24")
///                     .description("STL")
///                     .build())
///             .name("Contractors")
///             .description("Contractors IP access control group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   contractors:
///     type: aws:workspaces:IpGroup
///     properties:
///       rules:
///         - source: 150.24.14.0/24
///           description: NY
///         - source: 125.191.14.85/32
///           description: LA
///         - source: 44.98.100.0/24
///           description: STL
///       name: Contractors
///       description: Contractors IP access control group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces IP groups using their GroupID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/ipGroup:IpGroup example wsipg-488lrtl3k
/// ```
class IpGroup extends pulumi.CustomResource {
  /// The description of the IP group.
  late final pulumi.Output<String?> description;
  /// The name of the IP group.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  late final pulumi.Output<List<IpGroupRule>?> rules;
  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [IpGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpGroup]. {@macro pulumi_workspaces_ip_group_ip_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpGroup(
    String name, {
    IpGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/ipGroup:IpGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<IpGroupRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpGroupRule>(guardedValue, (value) => IpGroupRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [IpGroup] resource's state with the given [name] and [id].
  static IpGroup get(
    String name,
    pulumi.Input<String> id, {
    IpGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IpGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IpGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/ipGroup:IpGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<IpGroupRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpGroupRule>(guardedValue, (value) => IpGroupRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [IpGroup] resource.
  IpGroup.reference(String urn)
    : super(
        'aws:workspaces/ipGroup:IpGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<IpGroupRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpGroupRule>(guardedValue, (value) => IpGroupRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
