// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserProvisioningEventsEvent {
  /// Event content
  final pulumi.Input<String> content;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// Processing policy when you delete a RAM user
  final pulumi.Input<String> deletionStrategy;
  /// Directory ID
  final pulumi.Input<String> directoryId;
  /// Conflict strategy
  final pulumi.Input<String> duplicationStrategy;
  /// Number of manual retry failures
  final pulumi.Input<double> errorCount;
  /// Error message for last failure
  final pulumi.Input<String> errorInfo;
  /// Dead letter event ID
  final pulumi.Input<String> eventId;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// Last synchronization time
  final pulumi.Input<String> lastSyncTime;
  /// User Provisioning body ID
  final pulumi.Input<String> principalId;
  /// User Provisioning body name
  final pulumi.Input<String> principalName;
  /// User Provisioning body type
  final pulumi.Input<String> principalType;
  /// The type of the source action that triggered the event.
  final pulumi.Input<String> sourceType;
  /// User Provisioning target ID
  final pulumi.Input<String> targetId;
  /// User Provisioning target name
  final pulumi.Input<String> targetName;
  /// RD path of User Provisioning target
  final pulumi.Input<String> targetPath;
  /// User Provisioning target type
  final pulumi.Input<String> targetType;
  /// Event update time
  final pulumi.Input<String> updateTime;
  /// The ID of the User Provisioning.
  final pulumi.Input<String> userProvisioningId;

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
      content: pulumi.Input.fromValue(map['content'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionStrategy: pulumi.Input.fromValue(map['deletionStrategy'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      duplicationStrategy: pulumi.Input.fromValue(map['duplicationStrategy'] as String),
      errorCount: pulumi.Input.fromValue(map['errorCount'] as double),
      errorInfo: pulumi.Input.fromValue(map['errorInfo'] as String),
      eventId: pulumi.Input.fromValue(map['eventId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastSyncTime: pulumi.Input.fromValue(map['lastSyncTime'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalName: pulumi.Input.fromValue(map['principalName'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
      targetPath: pulumi.Input.fromValue(map['targetPath'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      userProvisioningId: pulumi.Input.fromValue(map['userProvisioningId'] as String),
    );
  }
}

