// ignore_for_file: unused_element, unnecessary_cast


class GetUserProvisioningEventsEvent {
  /// Event content
  final String content;
  /// The creation time of the resource
  final String createTime;
  /// Processing policy when you delete a RAM user
  final String deletionStrategy;
  /// Directory ID
  final String directoryId;
  /// Conflict strategy
  final String duplicationStrategy;
  /// Number of manual retry failures
  final double errorCount;
  /// Error message for last failure
  final String errorInfo;
  /// Dead letter event ID
  final String eventId;
  /// The ID of the resource supplied above.
  final String id;
  /// Last synchronization time
  final String lastSyncTime;
  /// User Provisioning body ID
  final String principalId;
  /// User Provisioning body name
  final String principalName;
  /// User Provisioning body type
  final String principalType;
  /// The type of the source action that triggered the event.
  final String sourceType;
  /// User Provisioning target ID
  final String targetId;
  /// User Provisioning target name
  final String targetName;
  /// RD path of User Provisioning target
  final String targetPath;
  /// User Provisioning target type
  final String targetType;
  /// Event update time
  final String updateTime;
  /// The ID of the User Provisioning.
  final String userProvisioningId;

  /// Creates a new [GetUserProvisioningEventsEvent].
  /// [content] Event content
  /// [createTime] The creation time of the resource
  /// [deletionStrategy] Processing policy when you delete a RAM user
  /// [directoryId] Directory ID
  /// [duplicationStrategy] Conflict strategy
  /// [errorCount] Number of manual retry failures
  /// [errorInfo] Error message for last failure
  /// [eventId] Dead letter event ID
  /// [id] The ID of the resource supplied above.
  /// [lastSyncTime] Last synchronization time
  /// [principalId] User Provisioning body ID
  /// [principalName] User Provisioning body name
  /// [principalType] User Provisioning body type
  /// [sourceType] The type of the source action that triggered the event.
  /// [targetId] User Provisioning target ID
  /// [targetName] User Provisioning target name
  /// [targetPath] RD path of User Provisioning target
  /// [targetType] User Provisioning target type
  /// [updateTime] Event update time
  /// [userProvisioningId] The ID of the User Provisioning.
  GetUserProvisioningEventsEvent({
    required this.content,
    required this.createTime,
    required this.deletionStrategy,
    required this.directoryId,
    required this.duplicationStrategy,
    required this.errorCount,
    required this.errorInfo,
    required this.eventId,
    required this.id,
    required this.lastSyncTime,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    required this.sourceType,
    required this.targetId,
    required this.targetName,
    required this.targetPath,
    required this.targetType,
    required this.updateTime,
    required this.userProvisioningId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'createTime': createTime,
      'deletionStrategy': deletionStrategy,
      'directoryId': directoryId,
      'duplicationStrategy': duplicationStrategy,
      'errorCount': errorCount,
      'errorInfo': errorInfo,
      'eventId': eventId,
      'id': id,
      'lastSyncTime': lastSyncTime,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'sourceType': sourceType,
      'targetId': targetId,
      'targetName': targetName,
      'targetPath': targetPath,
      'targetType': targetType,
      'updateTime': updateTime,
      'userProvisioningId': userProvisioningId,
    };
  }

  factory GetUserProvisioningEventsEvent.fromMap(Map<String, dynamic> map) {
    return GetUserProvisioningEventsEvent(
      content: map['content'] as String,
      createTime: map['createTime'] as String,
      deletionStrategy: map['deletionStrategy'] as String,
      directoryId: map['directoryId'] as String,
      duplicationStrategy: map['duplicationStrategy'] as String,
      errorCount: map['errorCount'] as double,
      errorInfo: map['errorInfo'] as String,
      eventId: map['eventId'] as String,
      id: map['id'] as String,
      lastSyncTime: map['lastSyncTime'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      sourceType: map['sourceType'] as String,
      targetId: map['targetId'] as String,
      targetName: map['targetName'] as String,
      targetPath: map['targetPath'] as String,
      targetType: map['targetType'] as String,
      updateTime: map['updateTime'] as String,
      userProvisioningId: map['userProvisioningId'] as String,
    );
  }
}

