// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_block_device_mapping_eb.dart';

class GetLaunchTemplateBlockDeviceMapping {
  final pulumi.Input<String> deviceName;
  final pulumi.Input<List<GetLaunchTemplateBlockDeviceMappingEb>> ebs;
  final pulumi.Input<String> noDevice;
  final pulumi.Input<String> virtualName;

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
    return <String, dynamic>{
      'deviceName': deviceName,
      'ebs': pulumi.Input.mapInputValue<List<GetLaunchTemplateBlockDeviceMappingEb>, List<Map<String, dynamic>>>(ebs, (value) => pulumi.Input.encodeList<GetLaunchTemplateBlockDeviceMappingEb, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noDevice': noDevice,
      'virtualName': virtualName,
    };
  }

  factory GetLaunchTemplateBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateBlockDeviceMapping(
      deviceName: (map['deviceName'] as String).input(),
      ebs: (pulumi.Input.decodeList<GetLaunchTemplateBlockDeviceMappingEb>(map['ebs']!, (value) => GetLaunchTemplateBlockDeviceMappingEb.fromMap((value as Map).cast<String, dynamic>()))).input(),
      noDevice: (map['noDevice'] as String).input(),
      virtualName: (map['virtualName'] as String).input(),
    );
  }
}

