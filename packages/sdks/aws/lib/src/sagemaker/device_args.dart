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
    required this.device,
    required this.deviceFleetName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': pulumi.Input.mapInputValue<DeviceDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
      'deviceFleetName': deviceFleetName,
      'region': ?region,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      device: (DeviceDevice.fromMap((map['device'] as Map).cast<String, dynamic>())).input(),
      deviceFleetName: (map['deviceFleetName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

