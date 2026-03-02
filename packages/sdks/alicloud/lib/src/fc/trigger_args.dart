// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_trigger_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_fc_trigger_trigger_args_doc}
class TriggerArgs {
  /// The config of Function Compute trigger.It is valid when `type` is not "mns_topic".See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  final pulumi.Input<String>? config;
  /// The config of Function Compute trigger when the type is "mns_topic".It is conflict with `config`.
  final pulumi.Input<String>? configMns;
  /// The Function Compute function name.
  final pulumi.Input<String> function;
  /// The Function Compute trigger name. It is the only in one service and is conflict with "name_prefix".
  final pulumi.Input<String>? name;
  /// Setting a prefix to get a only trigger name. It is conflict with "name".
  final pulumi.Input<String>? namePrefix;
  /// RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  final pulumi.Input<String>? role;
  /// The Function Compute service name.
  final pulumi.Input<String> service;
  /// Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  final pulumi.Input<String>? sourceArn;
  /// The Type of the trigger. Valid values: ["oss", "log", "timer", "http", "mns_topic", "cdn_events", "eventbridge"].
  ///
  /// > **NOTE:** Config does not support modification when type is mns_topic.
  /// > **NOTE:** type = cdn_events, available in 1.47.0+.
  /// > **NOTE:** type = eventbridge, available in 1.173.0+.
  final pulumi.Input<String> type;

  /// Creates a new [TriggerArgs].
  /// [config] The config of Function Compute trigger.It is valid when `type` is not "mns_topic".See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  /// [configMns] The config of Function Compute trigger when the type is "mns_topic".It is conflict with `config`.
  /// [function] The Function Compute function name.
  /// [name] The Function Compute trigger name. It is the only in one service and is conflict with "name_prefix".
  /// [namePrefix] Setting a prefix to get a only trigger name. It is conflict with "name".
  /// [role] RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  /// [service] The Function Compute service name.
  /// [sourceArn] Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  /// [type] The Type of the trigger. Valid values: ["oss", "log", "timer", "http", "mns_topic", "cdn_events", "eventbridge"].
  TriggerArgs({
    this.config,
    this.configMns,
    required this.function,
    this.name,
    this.namePrefix,
    this.role,
    required this.service,
    this.sourceArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'configMns': ?configMns,
      'function': function,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'role': ?role,
      'service': service,
      'sourceArn': ?sourceArn,
      'type': type,
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      config: map['config'] == null ? null : (map['config'] as String).input(),
      configMns: map['configMns'] == null ? null : (map['configMns'] as String).input(),
      function: (map['function'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      service: (map['service'] as String).input(),
      sourceArn: map['sourceArn'] == null ? null : (map['sourceArn'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

