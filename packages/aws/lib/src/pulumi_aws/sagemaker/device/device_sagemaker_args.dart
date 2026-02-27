// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../device_device/device_device.dart';

/// The set of arguments for Device.
class DeviceSagemakerArgs {
  /// The device to register with SageMaker AI Edge Manager. See Device details below.
  final pulumi.Input<DeviceDevice> device;

  /// The name of the Device Fleet.
  final pulumi.Input<String> deviceFleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DeviceSagemakerArgs({
    required this.device,
    required this.deviceFleetName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['device'] =
        pulumi.Input.mapInputValue<DeviceDevice, Map<String, dynamic>>(
            device, (value) => value.toMap());
    map['deviceFleetName'] = deviceFleetName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DeviceSagemakerArgs.fromMap(Map<String, dynamic> map) {
    return DeviceSagemakerArgs(
      device: pulumi.Input.asInput<DeviceDevice>(map['device']),
      deviceFleetName: pulumi.Input.asInput<String>(map['deviceFleetName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
