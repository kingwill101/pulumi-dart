// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeviceDevice {
  /// A description for the device.
  final pulumi.Input<String>? description;
  /// The name of the device.
  final pulumi.Input<String> deviceName;
  /// Amazon Web Services Internet of Things (IoT) object name.
  final pulumi.Input<String>? iotThingName;

  /// Creates a new [DeviceDevice].
  /// [description] A description for the device.
  /// [deviceName] The name of the device.
  /// [iotThingName] Amazon Web Services Internet of Things (IoT) object name.
  DeviceDevice({
    this.description,
    required this.deviceName,
    this.iotThingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deviceName': deviceName,
      'iotThingName': ?iotThingName,
    };
  }

  factory DeviceDevice.fromMap(Map<String, dynamic> map) {
    return DeviceDevice(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      deviceName: (map['deviceName'] as String).input(),
      iotThingName: map['iotThingName'] == null ? null : ((map['iotThingName'] as String).input()).input(),
    );
  }
}

