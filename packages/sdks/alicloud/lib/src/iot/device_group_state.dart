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
    pulumi.Output<String>? groupDesc,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? iotInstanceId,
    pulumi.Output<String>? superGroupId,
  }) :
      groupDesc = pulumi.Input.asOptionalInput<String>(groupDesc),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      iotInstanceId = pulumi.Input.asOptionalInput<String>(iotInstanceId),
      superGroupId = pulumi.Input.asOptionalInput<String>(superGroupId);

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
      groupDesc: map['groupDesc'] == null ? null : pulumi.Output.create<String>(map['groupDesc'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      iotInstanceId: map['iotInstanceId'] == null ? null : pulumi.Output.create<String>(map['iotInstanceId'] as String),
      superGroupId: map['superGroupId'] == null ? null : pulumi.Output.create<String>(map['superGroupId'] as String),
    );
  }
}

