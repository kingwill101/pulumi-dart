import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_pool_args.dart';
import 'device_pool_rule.dart';
import 'device_pool_state.dart';

/// Provides a resource to manage AWS Device Farm Device Pools.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devicefarm.DevicePool("example", {
///     rules: [{
///         attribute: "OS_VERSION",
///         operator: "EQUALS",
///         value: "\"AVAILABLE\"",
///     }],
///     name: "example",
///     projectArn: exampleAwsDevicefarmProject.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.DevicePool("example",
///     rules=[{
///         "attribute": "OS_VERSION",
///         "operator": "EQUALS",
///         "value": "\"AVAILABLE\"",
///     }],
///     name="example",
///     project_arn=example_aws_devicefarm_project["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DeviceFarm.DevicePool("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.DeviceFarm.Inputs.DevicePoolRuleArgs
///             {
///                 Attribute = "OS_VERSION",
///                 Operator = "EQUALS",
///                 Value = "\"AVAILABLE\"",
///             },
///         },
///         Name = "example",
///         ProjectArn = exampleAwsDevicefarmProject.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devicefarm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devicefarm.NewDevicePool(ctx, "example", &devicefarm.DevicePoolArgs{
/// 			Rules: devicefarm.DevicePoolRuleArray{
/// 				&devicefarm.DevicePoolRuleArgs{
/// 					Attribute: pulumi.String("OS_VERSION"),
/// 					Operator:  pulumi.String("EQUALS"),
/// 					Value:     pulumi.String("\"AVAILABLE\""),
/// 				},
/// 			},
/// 			Name:       pulumi.String("example"),
/// 			ProjectArn: pulumi.Any(exampleAwsDevicefarmProject.Arn),
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
/// resource "aws_devicefarm_devicepool" "example" {
///   rules {
///     attribute = "OS_VERSION"
///     operator  = "EQUALS"
///     value     = "\"AVAILABLE\""
///   }
///   name        = "example"
///   project_arn = exampleAwsDevicefarmProject.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devicefarm.DevicePool;
/// import com.pulumi.aws.devicefarm.DevicePoolArgs;
/// import com.pulumi.aws.devicefarm.inputs.DevicePoolRuleArgs;
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
///         var example = new DevicePool("example", DevicePoolArgs.builder()
///             .rules(DevicePoolRuleArgs.builder()
///                 .attribute("OS_VERSION")
///                 .operator("EQUALS")
///                 .value("\"AVAILABLE\"")
///                 .build())
///             .name("example")
///             .projectArn(exampleAwsDevicefarmProject.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devicefarm:DevicePool
///     properties:
///       rules:
///         - attribute: OS_VERSION
///           operator: EQUALS
///           value: '"AVAILABLE"'
///       name: example
///       projectArn: ${exampleAwsDevicefarmProject.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Device Farm device pool.
///
///
/// Using `pulumi import`, import DeviceFarm Device Pools using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/devicePool:DevicePool example arn:aws:devicefarm:us-west-2:123456789012:devicepool:4fa784c7-ccb4-4dbf-ba4f-02198320daa1/4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class DevicePool extends pulumi.CustomResource {
  /// ARN of this Device Pool
  late final pulumi.Output<String> arn;
  /// The device pool's description.
  late final pulumi.Output<String?> description;
  /// The number of devices that Device Farm can add to your device pool.
  late final pulumi.Output<int?> maxDevices;
  /// The name of the Device Pool
  late final pulumi.Output<String> name;
  /// The ARN of the project for the device pool.
  late final pulumi.Output<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The device pool's rules. See Rule.
  late final pulumi.Output<List<DevicePoolRule>> rules;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> type;

  /// Creates a new [DevicePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevicePool]. {@macro pulumi_devicefarm_device_pool_device_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevicePool(
    String name, {
    DevicePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/devicePool:DevicePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    maxDevices = registerOutput<int?>('maxDevices');
    this.name = registerOutput<String>('name');
    projectArn = registerOutput<String>('projectArn');
    region = registerOutput<String>('region');
    rules = registerOutput<List<DevicePoolRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevicePoolRule>(guardedValue, (value) => DevicePoolRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DevicePool] resource's state with the given [name] and [id].
  static DevicePool get(
    String name,
    pulumi.Input<String> id, {
    DevicePoolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DevicePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DevicePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/devicePool:DevicePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    maxDevices = registerOutput<int?>('maxDevices');
    this.name = registerOutput<String>('name');
    projectArn = registerOutput<String>('projectArn');
    region = registerOutput<String>('region');
    rules = registerOutput<List<DevicePoolRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevicePoolRule>(guardedValue, (value) => DevicePoolRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DevicePool] resource.
  DevicePool.reference(String urn)
    : super(
        'aws:devicefarm/devicePool:DevicePool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    maxDevices = registerOutput<int?>('maxDevices');
    this.name = registerOutput<String>('name');
    projectArn = registerOutput<String>('projectArn');
    region = registerOutput<String>('region');
    rules = registerOutput<List<DevicePoolRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevicePoolRule>(guardedValue, (value) => DevicePoolRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
