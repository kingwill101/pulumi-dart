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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? functionName,
    pulumi.Output<V3TriggerHttpTrigger>? httpTrigger,
    pulumi.Output<String>? invocationRole,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? qualifier,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<String>? status,
    pulumi.Output<String>? targetArn,
    pulumi.Output<String>? triggerConfig,
    pulumi.Output<String>? triggerId,
    pulumi.Output<String>? triggerName,
    pulumi.Output<String>? triggerType,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      httpTrigger = pulumi.Input.asOptionalInput<V3TriggerHttpTrigger>(httpTrigger),
      invocationRole = pulumi.Input.asOptionalInput<String>(invocationRole),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetArn = pulumi.Input.asOptionalInput<String>(targetArn),
      triggerConfig = pulumi.Input.asOptionalInput<String>(triggerConfig),
      triggerId = pulumi.Input.asOptionalInput<String>(triggerId),
      triggerName = pulumi.Input.asOptionalInput<String>(triggerName),
      triggerType = pulumi.Input.asOptionalInput<String>(triggerType);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      httpTrigger: map['httpTrigger'] == null ? null : pulumi.Output.create<V3TriggerHttpTrigger>(V3TriggerHttpTrigger.fromMap((map['httpTrigger'] as Map).cast<String, dynamic>())),
      invocationRole: map['invocationRole'] == null ? null : pulumi.Output.create<String>(map['invocationRole'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetArn: map['targetArn'] == null ? null : pulumi.Output.create<String>(map['targetArn'] as String),
      triggerConfig: map['triggerConfig'] == null ? null : pulumi.Output.create<String>(map['triggerConfig'] as String),
      triggerId: map['triggerId'] == null ? null : pulumi.Output.create<String>(map['triggerId'] as String),
      triggerName: map['triggerName'] == null ? null : pulumi.Output.create<String>(map['triggerName'] as String),
      triggerType: map['triggerType'] == null ? null : pulumi.Output.create<String>(map['triggerType'] as String),
    );
  }
}

