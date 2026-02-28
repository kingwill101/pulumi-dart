// ignore_for_file: unused_element, unnecessary_cast

import 'launch_template_block_device_mapping_ebs.dart';

class LaunchTemplateBlockDeviceMapping {
  /// The name of the device to mount.
  final String? deviceName;

  /// Configure EBS volume properties.
  final LaunchTemplateBlockDeviceMappingEbs? ebs;

  /// Suppresses the specified device included in the AMI's block device mapping.
  final String? noDevice;

  /// The [Instance Store Device
  /// Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames)
  /// (e.g., `"ephemeral0"`).
  final String? virtualName;

  /// Creates a new [LaunchTemplateBlockDeviceMapping].
  /// [deviceName] The name of the device to mount.
  /// [ebs] Configure EBS volume properties.
  /// [noDevice] Suppresses the specified device included in the AMI's block device mapping.
  /// [virtualName] The [Instance Store Device
  LaunchTemplateBlockDeviceMapping({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final ebsValue = ebs;
    if (ebsValue != null) {
      map['ebs'] = ebsValue.toMap();
    }
    final noDeviceValue = noDevice;
    if (noDeviceValue != null) {
      map['noDevice'] = noDeviceValue;
    }
    final virtualNameValue = virtualName;
    if (virtualNameValue != null) {
      map['virtualName'] = virtualNameValue;
    }
    return map;
  }

  factory LaunchTemplateBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateBlockDeviceMapping(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      ebs: map['ebs'] == null
          ? null
          : LaunchTemplateBlockDeviceMappingEbs.fromMap(
              (map['ebs'] as Map).cast<String, dynamic>()),
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as String,
      virtualName:
          map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}
