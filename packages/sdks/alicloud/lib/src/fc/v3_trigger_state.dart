// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_trigger_http_trigger.dart';

/// Input properties used for looking up and filtering V3Trigger resources.
class V3TriggerState {
  /// Creation time
  final pulumi.Input<String>? createTime;
  /// Description of the trigger
  final pulumi.Input<String>? description;
  /// Function Name
  final pulumi.Input<String>? functionName;
  /// (Available since v1.234.0) HTTP trigger information
  final pulumi.Input<V3TriggerHttpTrigger>? httpTrigger;
  /// The role required by the event source (such as OSS) to call the function.
  final pulumi.Input<String>? invocationRole;
  /// (Available since v1.234.0) The last modified time of the trigger
  final pulumi.Input<String>? lastModifiedTime;
  /// The version or alias of the function
  final pulumi.Input<String>? qualifier;
  /// Trigger Event source ARN
  final pulumi.Input<String>? sourceArn;
  /// The state of the trigger
  final pulumi.Input<String>? status;
  /// (Available since v1.234.0) Resource identity of the function
  final pulumi.Input<String>? targetArn;
  /// Trigger configuration. The configuration varies for different types of triggers.
  final pulumi.Input<String>? triggerConfig;
  /// (Available since v1.234.0) Trigger ID
  final pulumi.Input<String>? triggerId;
  /// Trigger Name
  final pulumi.Input<String>? triggerName;
  /// The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  final pulumi.Input<String>? triggerType;

  /// Creates a new [V3TriggerState].
  /// [createTime] Creation time
  /// [description] Description of the trigger
  /// [functionName] Function Name
  /// [httpTrigger] (Available since v1.234.0) HTTP trigger information
  /// [invocationRole] The role required by the event source (such as OSS) to call the function.
  /// [lastModifiedTime] (Available since v1.234.0) The last modified time of the trigger
  /// [qualifier] The version or alias of the function
  /// [sourceArn] Trigger Event source ARN
  /// [status] The state of the trigger
  /// [targetArn] (Available since v1.234.0) Resource identity of the function
  /// [triggerConfig] Trigger configuration. The configuration varies for different types of triggers.
  /// [triggerId] (Available since v1.234.0) Trigger ID
  /// [triggerName] Trigger Name
  /// [triggerType] The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  V3TriggerState({
    this.createTime,
    this.description,
    this.functionName,
    this.httpTrigger,
    this.invocationRole,
    this.lastModifiedTime,
    this.qualifier,
    this.sourceArn,
    this.status,
    this.targetArn,
    this.triggerConfig,
    this.triggerId,
    this.triggerName,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'functionName': ?functionName,
      'httpTrigger': ?pulumi.Input.mapOptionalInputValue<V3TriggerHttpTrigger, Map<String, dynamic>>(httpTrigger, (value) => value.toMap()),
      'invocationRole': ?invocationRole,
      'lastModifiedTime': ?lastModifiedTime,
      'qualifier': ?qualifier,
      'sourceArn': ?sourceArn,
      'status': ?status,
      'targetArn': ?targetArn,
      'triggerConfig': ?triggerConfig,
      'triggerId': ?triggerId,
      'triggerName': ?triggerName,
      'triggerType': ?triggerType,
    };
  }

  factory V3TriggerState.fromMap(Map<String, dynamic> map) {
    return V3TriggerState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      httpTrigger: map['httpTrigger'] == null ? null : (V3TriggerHttpTrigger.fromMap((map['httpTrigger'] as Map).cast<String, dynamic>())).input(),
      invocationRole: map['invocationRole'] == null ? null : (map['invocationRole'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      qualifier: map['qualifier'] == null ? null : (map['qualifier'] as String).input(),
      sourceArn: map['sourceArn'] == null ? null : (map['sourceArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      targetArn: map['targetArn'] == null ? null : (map['targetArn'] as String).input(),
      triggerConfig: map['triggerConfig'] == null ? null : (map['triggerConfig'] as String).input(),
      triggerId: map['triggerId'] == null ? null : (map['triggerId'] as String).input(),
      triggerName: map['triggerName'] == null ? null : (map['triggerName'] as String).input(),
      triggerType: map['triggerType'] == null ? null : (map['triggerType'] as String).input(),
    );
  }
}

