// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Trigger resources.
class TriggerState {
  /// The config of Function Compute trigger.It is valid when `type` is not "mns_topic".See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  final pulumi.Input<String>? config;
  /// The config of Function Compute trigger when the type is "mns_topic".It is conflict with `config`.
  final pulumi.Input<String>? configMns;
  /// The Function Compute function name.
  final pulumi.Input<String>? function;
  /// The date this resource was last modified.
  final pulumi.Input<String>? lastModified;
  /// The Function Compute trigger name. It is the only in one service and is conflict with "name_prefix".
  final pulumi.Input<String>? name;
  /// Setting a prefix to get a only trigger name. It is conflict with "name".
  final pulumi.Input<String>? namePrefix;
  /// RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  final pulumi.Input<String>? role;
  /// The Function Compute service name.
  final pulumi.Input<String>? service;
  /// Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  final pulumi.Input<String>? sourceArn;
  /// The Function Compute trigger ID.
  final pulumi.Input<String>? triggerId;
  /// The Type of the trigger. Valid values: ["oss", "log", "timer", "http", "mns_topic", "cdn_events", "eventbridge"].
  ///
  /// > **NOTE:** Config does not support modification when type is mns_topic.
  /// > **NOTE:** type = cdn_events, available in 1.47.0+.
  /// > **NOTE:** type = eventbridge, available in 1.173.0+.
  final pulumi.Input<String>? type;

  /// Creates a new [TriggerState].
  /// [config] The config of Function Compute trigger.It is valid when `type` is not "mns_topic".See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  /// [configMns] The config of Function Compute trigger when the type is "mns_topic".It is conflict with `config`.
  /// [function] The Function Compute function name.
  /// [lastModified] The date this resource was last modified.
  /// [name] The Function Compute trigger name. It is the only in one service and is conflict with "name_prefix".
  /// [namePrefix] Setting a prefix to get a only trigger name. It is conflict with "name".
  /// [role] RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  /// [service] The Function Compute service name.
  /// [sourceArn] Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  /// [triggerId] The Function Compute trigger ID.
  /// [type] The Type of the trigger. Valid values: ["oss", "log", "timer", "http", "mns_topic", "cdn_events", "eventbridge"].
  TriggerState({
    pulumi.Output<String>? config,
    pulumi.Output<String>? configMns,
    pulumi.Output<String>? function,
    pulumi.Output<String>? lastModified,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? role,
    pulumi.Output<String>? service,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<String>? triggerId,
    pulumi.Output<String>? type,
  }) :
      config = pulumi.Input.asOptionalInput<String>(config),
      configMns = pulumi.Input.asOptionalInput<String>(configMns),
      function = pulumi.Input.asOptionalInput<String>(function),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      role = pulumi.Input.asOptionalInput<String>(role),
      service = pulumi.Input.asOptionalInput<String>(service),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      triggerId = pulumi.Input.asOptionalInput<String>(triggerId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'configMns': ?configMns,
      'function': ?function,
      'lastModified': ?lastModified,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'role': ?role,
      'service': ?service,
      'sourceArn': ?sourceArn,
      'triggerId': ?triggerId,
      'type': ?type,
    };
  }

  factory TriggerState.fromMap(Map<String, dynamic> map) {
    return TriggerState(
      config: map['config'] == null ? null : pulumi.Output.create<String>(map['config'] as String),
      configMns: map['configMns'] == null ? null : pulumi.Output.create<String>(map['configMns'] as String),
      function: map['function'] == null ? null : pulumi.Output.create<String>(map['function'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      triggerId: map['triggerId'] == null ? null : pulumi.Output.create<String>(map['triggerId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

