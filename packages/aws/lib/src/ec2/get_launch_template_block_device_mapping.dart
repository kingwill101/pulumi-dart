// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_block_device_mapping_eb.dart';

class GetLaunchTemplateBlockDeviceMapping {
  final String deviceName;
  final List<GetLaunchTemplateBlockDeviceMappingEb> ebs;
  final String noDevice;
  final String virtualName;

  /// Creates a new [GetLaunchTemplateBlockDeviceMapping].
  /// [deviceName] Required.
  /// [ebs] Required.
  /// [noDevice] Required.
  /// [virtualName] Required.
  GetLaunchTemplateBlockDeviceMapping({
    required this.deviceName,
    required this.ebs,
    required this.noDevice,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['ebs'] = pulumi.Input.encodeList<GetLaunchTemplateBlockDeviceMappingEb,
        Map<String, dynamic>>(ebs, (value) => value.toMap());
    map['noDevice'] = noDevice;
    map['virtualName'] = virtualName;
    return map;
  }

  factory GetLaunchTemplateBlockDeviceMapping.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateBlockDeviceMapping(
      deviceName: map['deviceName'] as String,
      ebs: pulumi.Input.decodeList<GetLaunchTemplateBlockDeviceMappingEb>(
          map['ebs'],
          (value) => GetLaunchTemplateBlockDeviceMappingEb.fromMap(
              (value as Map).cast<String, dynamic>())),
      noDevice: map['noDevice'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
