// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_device.dart';

/// {@template pulumi_sagemaker_device_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_device_device_args_doc}
class DeviceArgs {
  /// The device to register with SageMaker AI Edge Manager. See Device details below.
  final pulumi.Input<DeviceDevice> device;
  /// The name of the Device Fleet.
  final pulumi.Input<String> deviceFleetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DeviceArgs].
  /// [device] The device to register with SageMaker AI Edge Manager. See Device details below.
  /// [deviceFleetName] The name of the Device Fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DeviceArgs({
    required pulumi.Output<DeviceDevice> device,
    required pulumi.Output<String> deviceFleetName,
    pulumi.Output<String>? region,
  }) :
      device = pulumi.Input.asInput<DeviceDevice>(device),
      deviceFleetName = pulumi.Input.asInput<String>(deviceFleetName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': pulumi.Input.mapInputValue<DeviceDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
      'deviceFleetName': deviceFleetName,
      'region': ?region,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      device: pulumi.Output.create<DeviceDevice>(DeviceDevice.fromMap((map['device'] as Map).cast<String, dynamic>())),
      deviceFleetName: pulumi.Output.create<String>(map['deviceFleetName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

