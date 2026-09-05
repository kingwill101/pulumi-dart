import 'package:pulumi/pulumi.dart' as pulumi;
import 'quick_connect_args.dart';
import 'quick_connect_quick_connect_config.dart';
import 'quick_connect_state.dart';

/// Provides an Amazon Connect Quick Connect resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.QuickConnect("test", {
///     quickConnectConfig: {
///         phoneConfigs: [{
///             phoneNumber: "+12345678912",
///         }],
///         quickConnectType: "PHONE_NUMBER",
///     },
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example Name",
///     description: "quick connect phone number",
///     tags: {
///         Name: "Example Quick Connect",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.QuickConnect("test",
///     quick_connect_config={
///         "phone_configs": [{
///             "phone_number": "+12345678912",
///         }],
///         "quick_connect_type": "PHONE_NUMBER",
///     },
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example Name",
///     description="quick connect phone number",
///     tags={
///         "Name": "Example Quick Connect",
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
///     var test = new Aws.Connect.QuickConnect("test", new()
///     {
///         QuickConnectConfig = new Aws.Connect.Inputs.QuickConnectQuickConnectConfigArgs
///         {
///             PhoneConfigs = new[]
///             {
///                 new Aws.Connect.Inputs.QuickConnectQuickConnectConfigPhoneConfigArgs
///                 {
///                     PhoneNumber = "+12345678912",
///                 },
///             },
///             QuickConnectType = "PHONE_NUMBER",
///         },
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example Name",
///         Description = "quick connect phone number",
///         Tags =
///         {
///             { "Name", "Example Quick Connect" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewQuickConnect(ctx, "test", &connect.QuickConnectArgs{
/// 			QuickConnectConfig: &connect.QuickConnectQuickConnectConfigArgs{
/// 				PhoneConfigs: connect.QuickConnectQuickConnectConfigPhoneConfigArray{
/// 					&connect.QuickConnectQuickConnectConfigPhoneConfigArgs{
/// 						PhoneNumber: pulumi.String("+12345678912"),
/// 					},
/// 				},
/// 				QuickConnectType: pulumi.String("PHONE_NUMBER"),
/// 			},
/// 			InstanceId:  pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:        pulumi.String("Example Name"),
/// 			Description: pulumi.String("quick connect phone number"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Quick Connect"),
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
/// resource "aws_connect_quickconnect" "test" {
///   quick_connect_config = {
///     phone_configs = [{
///       "phoneNumber" = "+12345678912"
///     }]
///     quick_connect_type = "PHONE_NUMBER"
///   }
///   instance_id = "aaaaaaaa-bbbb-cccc-dddd-111111111111"
///   name        = "Example Name"
///   description = "quick connect phone number"
///   tags = {
///     "Name" = "Example Quick Connect"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.QuickConnect;
/// import com.pulumi.aws.connect.QuickConnectArgs;
/// import com.pulumi.aws.connect.inputs.QuickConnectQuickConnectConfigArgs;
/// import com.pulumi.aws.connect.inputs.QuickConnectQuickConnectConfigPhoneConfigArgs;
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
///         var test = new QuickConnect("test", QuickConnectArgs.builder()
///             .quickConnectConfig(QuickConnectQuickConnectConfigArgs.builder()
///                 .phoneConfigs(QuickConnectQuickConnectConfigPhoneConfigArgs.builder()
///                     .phoneNumber("+12345678912")
///                     .build())
///                 .quickConnectType("PHONE_NUMBER")
///                 .build())
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example Name")
///             .description("quick connect phone number")
///             .tags(Map.of("Name", "Example Quick Connect"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:QuickConnect
///     properties:
///       quickConnectConfig:
///         phoneConfigs:
///           - phoneNumber: '+12345678912'
///         quickConnectType: PHONE_NUMBER
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Example Name
///       description: quick connect phone number
///       tags:
///         Name: Example Quick Connect
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Quick Connects using the `instanceId` and `quickConnectId` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/quickConnect:QuickConnect example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class QuickConnect extends pulumi.CustomResource {
  /// ARN of the Quick Connect.
  late final pulumi.Output<String> arn;
  /// Specifies the description of the Quick Connect.
  late final pulumi.Output<String?> description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// Specifies the name of the Quick Connect.
  late final pulumi.Output<String> name;
  /// A block that defines the configuration information for the Quick Connect: `quickConnectType` and one of `phoneConfig`, `queueConfig`, `userConfig` . The Quick Connect Config block is documented below.
  late final pulumi.Output<QuickConnectQuickConnectConfig> quickConnectConfig;
  /// The identifier for the Quick Connect.
  late final pulumi.Output<String> quickConnectId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tags to apply to the Quick Connect. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [QuickConnect].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuickConnect]. {@macro pulumi_connect_quick_connect_quick_connect_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuickConnect(
    String name, {
    QuickConnectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/quickConnect:QuickConnect',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    quickConnectConfig = registerOutput<QuickConnectQuickConnectConfig>('quickConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QuickConnectQuickConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    quickConnectId = registerOutput<String>('quickConnectId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [QuickConnect] resource's state with the given [name] and [id].
  static QuickConnect get(
    String name,
    pulumi.Input<String> id, {
    QuickConnectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return QuickConnect._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  QuickConnect._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/quickConnect:QuickConnect',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    quickConnectConfig = registerOutput<QuickConnectQuickConnectConfig>('quickConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QuickConnectQuickConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    quickConnectId = registerOutput<String>('quickConnectId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [QuickConnect] resource.
  QuickConnect.reference(String urn)
    : super(
        'aws:connect/quickConnect:QuickConnect',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    quickConnectConfig = registerOutput<QuickConnectQuickConnectConfig>('quickConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QuickConnectQuickConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    quickConnectId = registerOutput<String>('quickConnectId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
