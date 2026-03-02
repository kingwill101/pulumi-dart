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
      createTime: (map['createTime'] as String).input(),
      deviceActive: (map['deviceActive'] as String).input(),
      deviceCount: (map['deviceCount'] as String).input(),
      deviceOnline: (map['deviceOnline'] as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      groupDesc: (map['groupDesc'] as String).input(),
      groupId: (map['groupId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      id: (map['id'] as String).input(),
      success: (map['success'] as bool).input(),
    );
  }
}

