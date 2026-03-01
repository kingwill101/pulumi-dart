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
    pulumi.Output<String>? description,
    required pulumi.Output<String> functionName,
    pulumi.Output<String>? invocationRole,
    required pulumi.Output<String> qualifier,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<String>? triggerConfig,
    pulumi.Output<String>? triggerName,
    required pulumi.Output<String> triggerType,
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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      invocationRole: map['invocationRole'] == null ? null : pulumi.Output.create<String>(map['invocationRole'] as String),
      qualifier: pulumi.Output.create<String>(map['qualifier'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      triggerConfig: map['triggerConfig'] == null ? null : pulumi.Output.create<String>(map['triggerConfig'] as String),
      triggerName: map['triggerName'] == null ? null : pulumi.Output.create<String>(map['triggerName'] as String),
      triggerType: pulumi.Output.create<String>(map['triggerType'] as String),
    );
  }
}

