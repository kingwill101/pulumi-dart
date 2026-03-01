// ignore_for_file: unused_element, unnecessary_cast


class GetDeviceGroupsGroup {
  /// The Group CreateTime.
  final String createTime;
  /// The Group Number of activated devices.
  final String deviceActive;
  /// The Group Total number of devices.
  final String deviceCount;
  /// The Group Number of online devices.
  final String deviceOnline;
  /// The Error_Message of the device group.
  final String errorMessage;
  /// The GroupDesc of the device group.
  final String groupDesc;
  /// The GroupId of the device group.
  final String groupId;
  /// The GroupName of the device group.
  final String groupName;
  /// The ID of the device group.
  final String id;
  /// Whether the call is successful.
  final bool success;

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
      createTime: map['createTime'] as String,
      deviceActive: map['deviceActive'] as String,
      deviceCount: map['deviceCount'] as String,
      deviceOnline: map['deviceOnline'] as String,
      errorMessage: map['errorMessage'] as String,
      groupDesc: map['groupDesc'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      success: map['success'] as bool,
    );
  }
}

