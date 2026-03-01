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
  V3TriggerArgs({
    String? description,
    required String functionName,
    String? invocationRole,
    required String qualifier,
    String? sourceArn,
    String? triggerConfig,
    String? triggerName,
    required String triggerType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asInput<String>(functionName),
      invocationRole = pulumi.Input.asOptionalInput<String>(invocationRole),
      qualifier = pulumi.Input.asInput<String>(qualifier),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      triggerConfig = pulumi.Input.asOptionalInput<String>(triggerConfig),
      triggerName = pulumi.Input.asOptionalInput<String>(triggerName),
      triggerType = pulumi.Input.asInput<String>(triggerType);

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
      description: map['description'] == null ? null : map['description'] as String,
      functionName: map['functionName'] as String,
      invocationRole: map['invocationRole'] == null ? null : map['invocationRole'] as String,
      qualifier: map['qualifier'] as String,
      sourceArn: map['sourceArn'] == null ? null : map['sourceArn'] as String,
      triggerConfig: map['triggerConfig'] == null ? null : map['triggerConfig'] as String,
      triggerName: map['triggerName'] == null ? null : map['triggerName'] as String,
      triggerType: map['triggerType'] as String,
    );
  }
}

