// ignore_for_file: unused_element, unnecessary_cast

import 'get_v3_triggers_trigger_http_trigger.dart';

class GetV3TriggersTrigger {
  /// Creation time
  final String createTime;
  /// Description of the trigger
  final String description;
  /// HTTP trigger information
  final GetV3TriggersTriggerHttpTrigger httpTrigger;
  /// The ID of the resource supplied above.
  final String id;
  /// The role required by the event source (such as OSS) to call the function.
  final String invocationRole;
  /// The last modified time of the trigger
  final String lastModifiedTime;
  /// The version or alias of the function
  final String qualifier;
  /// Trigger Event source ARN
  final String sourceArn;
  /// The state of the trigger
  final String status;
  /// Resource identity of the function
  final String targetArn;
  /// Trigger configuration. The configuration varies for different types of triggers.
  final String triggerConfig;
  /// Trigger ID
  final String triggerId;
  /// Trigger Name
  final String triggerName;
  /// The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  final String triggerType;

  /// Creates a new [GetV3TriggersTrigger].
  /// [createTime] Creation time
  /// [description] Description of the trigger
  /// [httpTrigger] HTTP trigger information
  /// [id] The ID of the resource supplied above.
  /// [invocationRole] The role required by the event source (such as OSS) to call the function.
  /// [lastModifiedTime] The last modified time of the trigger
  /// [qualifier] The version or alias of the function
  /// [sourceArn] Trigger Event source ARN
  /// [status] The state of the trigger
  /// [targetArn] Resource identity of the function
  /// [triggerConfig] Trigger configuration. The configuration varies for different types of triggers.
  /// [triggerId] Trigger ID
  /// [triggerName] Trigger Name
  /// [triggerType] The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  GetV3TriggersTrigger({
    required this.createTime,
    required this.description,
    required this.httpTrigger,
    required this.id,
    required this.invocationRole,
    required this.lastModifiedTime,
    required this.qualifier,
    required this.sourceArn,
    required this.status,
    required this.targetArn,
    required this.triggerConfig,
    required this.triggerId,
    required this.triggerName,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'httpTrigger': httpTrigger.toMap(),
      'id': id,
      'invocationRole': invocationRole,
      'lastModifiedTime': lastModifiedTime,
      'qualifier': qualifier,
      'sourceArn': sourceArn,
      'status': status,
      'targetArn': targetArn,
      'triggerConfig': triggerConfig,
      'triggerId': triggerId,
      'triggerName': triggerName,
      'triggerType': triggerType,
    };
  }

  factory GetV3TriggersTrigger.fromMap(Map<String, dynamic> map) {
    return GetV3TriggersTrigger(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      httpTrigger: GetV3TriggersTriggerHttpTrigger.fromMap((map['httpTrigger'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      invocationRole: map['invocationRole'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      qualifier: map['qualifier'] as String,
      sourceArn: map['sourceArn'] as String,
      status: map['status'] as String,
      targetArn: map['targetArn'] as String,
      triggerConfig: map['triggerConfig'] as String,
      triggerId: map['triggerId'] as String,
      triggerName: map['triggerName'] as String,
      triggerType: map['triggerType'] as String,
    );
  }
}

