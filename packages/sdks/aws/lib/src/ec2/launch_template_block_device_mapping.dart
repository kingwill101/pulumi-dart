// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_block_device_mapping_ebs.dart';

class LaunchTemplateBlockDeviceMapping {
  /// The name of the device to mount.
  final pulumi.Input<String>? deviceName;
  /// Configure EBS volume properties.
  final pulumi.Input<LaunchTemplateBlockDeviceMappingEbs>? ebs;
  /// Suppresses the specified device included in the AMI's block device mapping.
  final pulumi.Input<String>? noDevice;
  /// The [Instance Store Device
  /// Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames)
  /// (e.g., `"ephemeral0"`).
  final pulumi.Input<String>? virtualName;

  /// Creates a new [LaunchTemplateBlockDeviceMapping].
  /// [deviceName] The name of the device to mount.
  /// [ebs] Configure EBS volume properties.
  /// [noDevice] Suppresses the specified device included in the AMI's block device mapping.
  /// [virtualName] The [Instance Store Device
  const LaunchTemplateBlockDeviceMapping({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateBlockDeviceMappingEbs, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory LaunchTemplateBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateBlockDeviceMapping(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebs: (() { final guardedValue = map['ebs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateBlockDeviceMappingEbs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noDevice: (() { final guardedValue = map['noDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualName: (() { final guardedValue = map['virtualName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

