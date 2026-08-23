import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_args_type.dart';
import 'input_state.dart';
import 'input_vpc.dart';

/// Resource for managing an AWS MediaLive Input.
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
/// const exampleInput = new aws.medialive.Input("example", {
///     name: "example-input",
///     inputSecurityGroups: [example.id],
///     type: "UDP_PUSH",
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
/// example_input = aws.medialive.Input("example",
///     name="example-input",
///     input_security_groups=[example.id],
///     type="UDP_PUSH",
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
///     var exampleInput = new Aws.MediaLive.Input("example", new()
///     {
///         Name = "example-input",
///         InputSecurityGroups = new[]
///         {
///             example.Id,
///         },
///         Type = "UDP_PUSH",
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
/// 		example, err := medialive.NewInputSecurityGroup(ctx, "example", &medialive.InputSecurityGroupArgs{
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
/// 		_, err = medialive.NewInput(ctx, "example", &medialive.InputArgs{
/// 			Name: pulumi.String("example-input"),
/// 			InputSecurityGroups: pulumi.StringArray{
/// 				example.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Type: pulumi.String("UDP_PUSH"),
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
/// resource "aws_medialive_input" "example" {
///   name                  = "example-input"
///   input_security_groups = [aws_medialive_inputsecuritygroup.example.id]
///   type                  = "UDP_PUSH"
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
/// import com.pulumi.aws.medialive.Input;
/// import com.pulumi.aws.medialive.InputArgs;
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
///         var exampleInput = new Input("exampleInput", InputArgs.builder()
///             .name("example-input")
///             .inputSecurityGroups(example.id())
///             .type("UDP_PUSH")
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
///   exampleInput:
///     type: aws:medialive:Input
///     name: example
///     properties:
///       name: example-input
///       inputSecurityGroups:
///         - ${example.id}
///       type: UDP_PUSH
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
/// * `id` (String) ID of the MediaLive Input.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import MediaLive Input using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/input:Input example 12345678
/// ```
class InputType extends pulumi.CustomResource {
  /// ARN of the Input.
  late final pulumi.Output<String> arn;
  /// Channels attached to Input.
  late final pulumi.Output<List<String>> attachedChannels;
  /// Destination settings for PUSH type inputs. See Destinations for more details.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinations;
  /// The input class.
  late final pulumi.Output<String> inputClass;
  /// Settings for the devices. See Input Devices for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> inputDevices;
  /// A list of IDs for all Inputs which are partners of this one.
  late final pulumi.Output<List<String>> inputPartnerIds;
  /// List of input security groups.
  late final pulumi.Output<List<String>?> inputSecurityGroups;
  /// Source type of the input.
  late final pulumi.Output<String> inputSourceType;
  /// A list of the MediaConnect Flows. See Media Connect Flows for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> mediaConnectFlows;
  /// Name of the input.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the role this input assumes during and after creation.
  late final pulumi.Output<String> roleArn;
  /// The source URLs for a PULL-type input. See Sources for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> sources;
  /// A map of tags to assign to the Input. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The different types of inputs that AWS Elemental MediaLive supports.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;
  /// Settings for a private VPC Input. See VPC for more details.
  late final pulumi.Output<InputVpc?> vpc;

  /// Creates a new [InputType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InputType]. {@macro pulumi_medialive_input_input_args_type_doc}
  /// [options] Resource options controlling this resource's behavior.
  InputType(
    String name, {
    InputArgsType? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/input:Input',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachedChannels = registerOutput<List<String>>('attachedChannels');
    destinations = registerOutput<List<Map<String, dynamic>>?>('destinations');
    inputClass = registerOutput<String>('inputClass');
    inputDevices = registerOutput<List<Map<String, dynamic>>>('inputDevices');
    inputPartnerIds = registerOutput<List<String>>('inputPartnerIds');
    inputSecurityGroups = registerOutput<List<String>?>('inputSecurityGroups');
    inputSourceType = registerOutput<String>('inputSourceType');
    mediaConnectFlows = registerOutput<List<Map<String, dynamic>>>('mediaConnectFlows');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    vpc = registerOutput<InputVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InputVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [InputType] resource's state with the given [name] and [id].
  static InputType get(
    String name,
    pulumi.Input<String> id, {
    InputState? state,
  }) {
    return InputType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InputType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/input:Input',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachedChannels = registerOutput<List<String>>('attachedChannels');
    destinations = registerOutput<List<Map<String, dynamic>>?>('destinations');
    inputClass = registerOutput<String>('inputClass');
    inputDevices = registerOutput<List<Map<String, dynamic>>>('inputDevices');
    inputPartnerIds = registerOutput<List<String>>('inputPartnerIds');
    inputSecurityGroups = registerOutput<List<String>?>('inputSecurityGroups');
    inputSourceType = registerOutput<String>('inputSourceType');
    mediaConnectFlows = registerOutput<List<Map<String, dynamic>>>('mediaConnectFlows');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    vpc = registerOutput<InputVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InputVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
