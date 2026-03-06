// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_v3_trigger_v3_trigger_args_doc}
/// The set of arguments for V3Trigger.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_trigger_v3_trigger_args_doc}
class V3TriggerArgs {
  /// Description of the trigger
  final pulumi.Input<String>? description;
  /// Function Name
  final pulumi.Input<String> functionName;
  /// The role required by the event source (such as OSS) to call the function.
  final pulumi.Input<String>? invocationRole;
  /// The version or alias of the function
  final pulumi.Input<String> qualifier;
  /// Trigger Event source ARN
  final pulumi.Input<String>? sourceArn;
  /// Trigger configuration. The configuration varies for different types of triggers.
  final pulumi.Input<String>? triggerConfig;
  /// Trigger Name
  final pulumi.Input<String>? triggerName;
  /// The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  final pulumi.Input<String> triggerType;

  /// Creates a new [V3TriggerArgs].
  /// [description] Description of the trigger
  /// [functionName] Function Name
  /// [invocationRole] The role required by the event source (such as OSS) to call the function.
  /// [qualifier] The version or alias of the function
  /// [sourceArn] Trigger Event source ARN
  /// [triggerConfig] Trigger configuration. The configuration varies for different types of triggers.
  /// [triggerName] Trigger Name
  /// [triggerType] The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  const V3TriggerArgs({
    this.description,
    required this.functionName,
    this.invocationRole,
    required this.qualifier,
    this.sourceArn,
    this.triggerConfig,
    this.triggerName,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'functionName': functionName,
      'invocationRole': ?invocationRole,
      'qualifier': qualifier,
      'sourceArn': ?sourceArn,
      'triggerConfig': ?triggerConfig,
      'triggerName': ?triggerName,
      'triggerType': triggerType,
    };
  }

  factory V3TriggerArgs.fromMap(Map<String, dynamic> map) {
    return V3TriggerArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      invocationRole: (() { final guardedValue = map['invocationRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: pulumi.Input.fromValue(map['qualifier'] as String),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerConfig: (() { final guardedValue = map['triggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerName: (() { final guardedValue = map['triggerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}

