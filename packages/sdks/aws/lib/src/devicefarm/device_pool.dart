import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_pool_args.dart';
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
///     name: "example",
///     projectArn: exampleAwsDevicefarmProject.arn,
///     rules: [{
///         attribute: "OS_VERSION",
///         operator: "EQUALS",
///         value: "\"AVAILABLE\"",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.DevicePool("example",
///     name="example",
///     project_arn=example_aws_devicefarm_project["arn"],
///     rules=[{
///         "attribute": "OS_VERSION",
///         "operator": "EQUALS",
///         "value": "\"AVAILABLE\"",
///     }])
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
///         Name = "example",
///         ProjectArn = exampleAwsDevicefarmProject.Arn,
///         Rules = new[]
///         {
///             new Aws.DeviceFarm.Inputs.DevicePoolRuleArgs
///             {
///                 Attribute = "OS_VERSION",
///                 Operator = "EQUALS",
///                 Value = "\"AVAILABLE\"",
///             },
///         },
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
/// 			Name:       pulumi.String("example"),
/// 			ProjectArn: pulumi.Any(exampleAwsDevicefarmProject.Arn),
/// 			Rules: devicefarm.DevicePoolRuleArray{
/// 				&devicefarm.DevicePoolRuleArgs{
/// 					Attribute: pulumi.String("OS_VERSION"),
/// 					Operator:  pulumi.String("EQUALS"),
/// 					Value:     pulumi.String("\"AVAILABLE\""),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("example")
///             .projectArn(exampleAwsDevicefarmProject.arn())
///             .rules(DevicePoolRuleArgs.builder()
///                 .attribute("OS_VERSION")
///                 .operator("EQUALS")
///                 .value("\"AVAILABLE\"")
///                 .build())
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
///       name: example
///       projectArn: ${exampleAwsDevicefarmProject.arn}
///       rules:
///         - attribute: OS_VERSION
///           operator: EQUALS
///           value: '"AVAILABLE"'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm device pool.
///
///
/// Using `pulumi import`, import DeviceFarm Device Pools using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/devicePool:DevicePool example arn:aws:devicefarm:us-west-2:123456789012:devicepool:4fa784c7-ccb4-4dbf-ba4f-02198320daa1/4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class DevicePool extends pulumi.CustomResource {
  /// The Amazon Resource Name of this Device Pool
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
  late final pulumi.Output<List<Map<String, dynamic>>> rules;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    maxDevices = registerOutput<int?>('maxDevices');
    this.name = registerOutput<String>('name');
    projectArn = registerOutput<String>('projectArn');
    region = registerOutput<String>('region');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DevicePool] resource's state with the given [name] and [id].
  static DevicePool get(
    String name,
    pulumi.Input<String> id, {
    DevicePoolState? state,
  }) {
    return DevicePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
