// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_device_group_device_group_args_doc}
/// The set of arguments for DeviceGroup.
/// {@endtemplate}
/// {@macro pulumi_iot_device_group_device_group_args_doc}
class DeviceGroupArgs {
  /// The GroupDesc of the device group.
  final pulumi.Input<String>? groupDesc;
  /// The GroupName of the device group.
  final pulumi.Input<String> groupName;
  /// The id of the Iot Instance.
  final pulumi.Input<String>? iotInstanceId;
  /// The id of the SuperGroup.
  final pulumi.Input<String>? superGroupId;

  /// Creates a new [DeviceGroupArgs].
  /// [groupDesc] The GroupDesc of the device group.
  /// [groupName] The GroupName of the device group.
  /// [iotInstanceId] The id of the Iot Instance.
  /// [superGroupId] The id of the SuperGroup.
  DeviceGroupArgs({
    String? groupDesc,
    required String groupName,
    String? iotInstanceId,
    String? superGroupId,
  }) :
      groupDesc = pulumi.Input.asOptionalInput<String>(groupDesc),
      groupName = pulumi.Input.asInput<String>(groupName),
      iotInstanceId = pulumi.Input.asOptionalInput<String>(iotInstanceId),
      superGroupId = pulumi.Input.asOptionalInput<String>(superGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupDesc': ?groupDesc,
      'groupName': groupName,
      'iotInstanceId': ?iotInstanceId,
      'superGroupId': ?superGroupId,
    };
  }

  factory DeviceGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeviceGroupArgs(
      groupDesc: map['groupDesc'] == null ? null : map['groupDesc'] as String,
      groupName: map['groupName'] as String,
      iotInstanceId: map['iotInstanceId'] == null ? null : map['iotInstanceId'] as String,
      superGroupId: map['superGroupId'] == null ? null : map['superGroupId'] as String,
    );
  }
}

