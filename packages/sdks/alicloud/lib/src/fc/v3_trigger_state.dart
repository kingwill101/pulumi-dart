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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpTrigger: (() { final guardedValue = map['httpTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V3TriggerHttpTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      invocationRole: (() { final guardedValue = map['invocationRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerConfig: (() { final guardedValue = map['triggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerName: (() { final guardedValue = map['triggerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

