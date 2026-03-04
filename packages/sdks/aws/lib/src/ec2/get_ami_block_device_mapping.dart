// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAmiBlockDeviceMapping {
  /// Physical name of the device.
  final pulumi.Input<String> deviceName;

  /// Map containing EBS information, if the device is EBS based. Unlike most object attributes, these are accessed directly (e.g., `ebs.volume_size` or `ebs["volume_size"]`) rather than accessed through the first element of a list (e.g., `ebs[0].volume_size`).
  final pulumi.Input<Map<String, String>> ebs;

  /// Suppresses the specified device included in the block device mapping of the AMI.
  final pulumi.Input<String> noDevice;

  /// Virtual device name (for instance stores).
  final pulumi.Input<String> virtualName;

  /// Creates a new [GetAmiBlockDeviceMapping].
  /// [deviceName] Physical name of the device.
  /// [ebs] Map containing EBS information, if the device is EBS based. Unlike most object attributes, these are accessed directly (e.g., `ebs.volume_size` or `ebs["volume_size"]`) rather than accessed through the first element of a list (e.g., `ebs[0].volume_size`).
  /// [noDevice] Suppresses the specified device included in the block device mapping of the AMI.
  /// [virtualName] Virtual device name (for instance stores).
  GetAmiBlockDeviceMapping({
    required this.deviceName,
    required this.ebs,
    required this.noDevice,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'ebs': ebs,
      'noDevice': noDevice,
      'virtualName': virtualName,
    };
  }

  factory GetAmiBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return GetAmiBlockDeviceMapping(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      ebs: pulumi.Input.fromValue((map['ebs'] as Map).cast<String, String>()),
      noDevice: pulumi.Input.fromValue(map['noDevice'] as String),
      virtualName: pulumi.Input.fromValue(map['virtualName'] as String),
    );
  }
}
