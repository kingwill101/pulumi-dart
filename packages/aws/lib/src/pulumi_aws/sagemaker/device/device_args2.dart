// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../device_device/device_device.dart';

/// The set of arguments for Device.
class DeviceArgs2 {
  /// The device to register with SageMaker AI Edge Manager. See Device details below.
  final Input<DeviceDevice> device;

  /// The name of the Device Fleet.
  final Input<String> deviceFleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DeviceArgs2({
    required this.device,
    required this.deviceFleetName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['device'] = Input.mapInputValue<DeviceDevice, Map<String, dynamic>>(
        device, (value) => value.toMap());
    map['deviceFleetName'] = deviceFleetName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DeviceArgs2.fromMap(Map<String, dynamic> map) {
    return DeviceArgs2(
      device: Input.asInput<DeviceDevice>(map['device']),
      deviceFleetName: Input.asInput<String>(map['deviceFleetName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
