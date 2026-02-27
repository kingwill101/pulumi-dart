import 'package:pulumi/pulumi.dart' as pulumi;
import '../device_device/device_device.dart';
import 'device_sagemaker_args.dart';

/// Provides a SageMaker AI Device resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Devices using the `device-fleet-name/device-name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/device:Device example my-fleet/my-device
/// ```
class DeviceSagemaker extends pulumi.CustomResource {
  late final pulumi.Output<String> agentVersion;

  /// The Amazon Resource Name (ARN) assigned by AWS to this Device.
  late final pulumi.Output<String> arn;

  /// The device to register with SageMaker AI Edge Manager. See Device details below.
  late final pulumi.Output<DeviceDevice> device;

  /// The name of the Device Fleet.
  late final pulumi.Output<String> deviceFleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DeviceSagemaker(
    String name, {
    DeviceSagemakerArgs? args,
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
