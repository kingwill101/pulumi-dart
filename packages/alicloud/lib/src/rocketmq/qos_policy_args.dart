// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_qos_policy_qos_policy_args_doc}
/// The set of arguments for QosPolicy.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_qos_policy_qos_policy_args_doc}
class QosPolicyArgs {
  /// The description of the QoS policy.
  final pulumi.Input<String>? description;
  /// The destination CIDR block.
  final pulumi.Input<String> destCidr;
  /// The destination port range.
  final pulumi.Input<String> destPortRange;
  /// The expiration time of the quintuple rule.
  final pulumi.Input<String>? endTime;
  /// The transport layer protocol.
  final pulumi.Input<String> ipProtocol;
  /// The name of the QoS policy.
  final pulumi.Input<String>? name;
  /// The priority of the quintuple rule. A smaller value indicates a higher priority. If the priorities of two quintuple rules are the same, the rule created earlier is applied first.Value range: 1 to 7.
  final pulumi.Input<int> priority;
  /// The instance ID of the QoS policy to which the quintuple rule is created.
  final pulumi.Input<String> qosId;
  /// The source CIDR block.
  final pulumi.Input<String> sourceCidr;
  /// The source port range of the transport layer.
  final pulumi.Input<String> sourcePortRange;
  /// The time when the quintuple rule takes effect.
  final pulumi.Input<String>? startTime;

  /// Creates a new [QosPolicyArgs].
  /// [description] The description of the QoS policy.
  /// [destCidr] The destination CIDR block.
  /// [destPortRange] The destination port range.
  /// [endTime] The expiration time of the quintuple rule.
  /// [ipProtocol] The transport layer protocol.
  /// [name] The name of the QoS policy.
  /// [priority] The priority of the quintuple rule. A smaller value indicates a higher priority. If the priorities of two quintuple rules are the same, the rule created earlier is applied first.Value range: 1 to 7.
  /// [qosId] The instance ID of the QoS policy to which the quintuple rule is created.
  /// [sourceCidr] The source CIDR block.
  /// [sourcePortRange] The source port range of the transport layer.
  /// [startTime] The time when the quintuple rule takes effect.
  QosPolicyArgs({
    String? description,
    required String destCidr,
    required String destPortRange,
    String? endTime,
    required String ipProtocol,
    String? name,
    required int priority,
    required String qosId,
    required String sourceCidr,
    required String sourcePortRange,
    String? startTime,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destCidr = pulumi.Input.asInput<String>(destCidr),
      destPortRange = pulumi.Input.asInput<String>(destPortRange),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      ipProtocol = pulumi.Input.asInput<String>(ipProtocol),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asInput<int>(priority),
      qosId = pulumi.Input.asInput<String>(qosId),
      sourceCidr = pulumi.Input.asInput<String>(sourceCidr),
      sourcePortRange = pulumi.Input.asInput<String>(sourcePortRange),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destCidr': destCidr,
      'destPortRange': destPortRange,
      'endTime': ?endTime,
      'ipProtocol': ipProtocol,
      'name': ?name,
      'priority': priority,
      'qosId': qosId,
      'sourceCidr': sourceCidr,
      'sourcePortRange': sourcePortRange,
      'startTime': ?startTime,
    };
  }

  factory QosPolicyArgs.fromMap(Map<String, dynamic> map) {
    return QosPolicyArgs(
      description: map['description'] == null ? null : map['description'] as String,
      destCidr: map['destCidr'] as String,
      destPortRange: map['destPortRange'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      ipProtocol: map['ipProtocol'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      qosId: map['qosId'] as String,
      sourceCidr: map['sourceCidr'] as String,
      sourcePortRange: map['sourcePortRange'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

