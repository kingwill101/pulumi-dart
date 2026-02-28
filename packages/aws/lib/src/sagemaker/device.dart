import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'device_device.dart';

/// Provides a SageMaker AI Device resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Device("example", {
///     deviceFleetName: exampleAwsSagemakerDeviceFleet.deviceFleetName,
///     device: {
///         deviceName: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Device("example",
///     device_fleet_name=example_aws_sagemaker_device_fleet["deviceFleetName"],
///     device={
///         "device_name": "example",
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
///     var example = new Aws.Sagemaker.Device("example", new()
///     {
///         DeviceFleetName = exampleAwsSagemakerDeviceFleet.DeviceFleetName,
///         DeviceDetails = new Aws.Sagemaker.Inputs.DeviceDeviceArgs
///         {
///             DeviceName = "example",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewDevice(ctx, "example", &sagemaker.DeviceArgs{
/// 			DeviceFleetName: pulumi.Any(exampleAwsSagemakerDeviceFleet.DeviceFleetName),
/// 			Device: &sagemaker.DeviceDeviceArgs{
/// 				DeviceName: pulumi.String("example"),
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
/// import com.pulumi.aws.sagemaker.Device;
/// import com.pulumi.aws.sagemaker.DeviceArgs;
/// import com.pulumi.aws.sagemaker.inputs.DeviceDeviceArgs;
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
///         var example = new Device("example", DeviceArgs.builder()
///             .deviceFleetName(exampleAwsSagemakerDeviceFleet.deviceFleetName())
///             .device(DeviceDeviceArgs.builder()
///                 .deviceName("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Device
///     properties:
///       deviceFleetName: ${exampleAwsSagemakerDeviceFleet.deviceFleetName}
///       device:
///         deviceName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Devices using the `device-fleet-name/device-name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/device:Device example my-fleet/my-device
/// ```
class Device extends pulumi.CustomResource {
  late final pulumi.Output<String> agentVersion;
  /// The Amazon Resource Name (ARN) assigned by AWS to this Device.
  late final pulumi.Output<String> arn;
  /// The device to register with SageMaker AI Edge Manager. See Device details below.
  late final pulumi.Output<DeviceDevice> device;
  /// The name of the Device Fleet.
  late final pulumi.Output<String> deviceFleetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_sagemaker_device_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(
    String name, {
    DeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/device:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentVersion = registerOutput<String>('agentVersion');
    this.arn = registerOutput<String>('arn');
    this.device = registerOutput<DeviceDevice>('device');
    this.deviceFleetName = registerOutput<String>('deviceFleetName');
    this.region = registerOutput<String>('region');
  }
}
