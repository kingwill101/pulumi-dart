// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeviceGroupsGroup {
  /// The Group CreateTime.
  final pulumi.Input<String> createTime;
  /// The Group Number of activated devices.
  final pulumi.Input<String> deviceActive;
  /// The Group Total number of devices.
  final pulumi.Input<String> deviceCount;
  /// The Group Number of online devices.
  final pulumi.Input<String> deviceOnline;
  /// The Error_Message of the device group.
  final pulumi.Input<String> errorMessage;
  /// The GroupDesc of the device group.
  final pulumi.Input<String> groupDesc;
  /// The GroupId of the device group.
  final pulumi.Input<String> groupId;
  /// The GroupName of the device group.
  final pulumi.Input<String> groupName;
  /// The ID of the device group.
  final pulumi.Input<String> id;
  /// Whether the call is successful.
  final pulumi.Input<bool> success;

  /// Creates a new [GetDeviceGroupsGroup].
  /// [createTime] The Group CreateTime.
  /// [deviceActive] The Group Number of activated devices.
  /// [deviceCount] The Group Total number of devices.
  /// [deviceOnline] The Group Number of online devices.
  /// [errorMessage] The Error_Message of the device group.
  /// [groupDesc] The GroupDesc of the device group.
  /// [groupId] The GroupId of the device group.
  /// [groupName] The GroupName of the device group.
  /// [id] The ID of the device group.
  /// [success] Whether the call is successful.
  GetDeviceGroupsGroup({
    required this.createTime,
    required this.deviceActive,
    required this.deviceCount,
    required this.deviceOnline,
    required this.errorMessage,
    required this.groupDesc,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.success,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deviceActive': deviceActive,
      'deviceCount': deviceCount,
      'deviceOnline': deviceOnline,
      'errorMessage': errorMessage,
      'groupDesc': groupDesc,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'success': success,
    };
  }

  factory GetDeviceGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDeviceGroupsGroup(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deviceActive: pulumi.Input.fromValue(map['deviceActive'] as String),
      deviceCount: pulumi.Input.fromValue(map['deviceCount'] as String),
      deviceOnline: pulumi.Input.fromValue(map['deviceOnline'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      groupDesc: pulumi.Input.fromValue(map['groupDesc'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      success: pulumi.Input.fromValue(map['success'] as bool),
    );
  }
}

