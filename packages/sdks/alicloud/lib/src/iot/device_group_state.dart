// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DeviceGroup resources.
class DeviceGroupState {
  /// The GroupDesc of the device group.
  final pulumi.Input<String>? groupDesc;
  /// The GroupName of the device group.
  final pulumi.Input<String>? groupName;
  /// The id of the Iot Instance.
  final pulumi.Input<String>? iotInstanceId;
  /// The id of the SuperGroup.
  final pulumi.Input<String>? superGroupId;

  /// Creates a new [DeviceGroupState].
  /// [groupDesc] The GroupDesc of the device group.
  /// [groupName] The GroupName of the device group.
  /// [iotInstanceId] The id of the Iot Instance.
  /// [superGroupId] The id of the SuperGroup.
  DeviceGroupState({
    this.groupDesc,
    this.groupName,
    this.iotInstanceId,
    this.superGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupDesc': ?groupDesc,
      'groupName': ?groupName,
      'iotInstanceId': ?iotInstanceId,
      'superGroupId': ?superGroupId,
    };
  }

  factory DeviceGroupState.fromMap(Map<String, dynamic> map) {
    return DeviceGroupState(
      groupDesc: map['groupDesc'] == null ? null : (map['groupDesc']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      iotInstanceId: map['iotInstanceId'] == null ? null : (map['iotInstanceId']! as String).input(),
      superGroupId: map['superGroupId'] == null ? null : (map['superGroupId']! as String).input(),
    );
  }
}

