// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_qos_bandwidth_limit_rule_qos_bandwidth_limit_rule_args_doc}
/// The set of arguments for QosBandwidthLimitRule.
/// {@endtemplate}
/// {@macro pulumi_networking_qos_bandwidth_limit_rule_qos_bandwidth_limit_rule_args_doc}
class QosBandwidthLimitRuleArgs {
  /// The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// existing QoS bandwidth limit rule.
  final pulumi.Input<String>? direction;
  /// The maximum burst size in kilobits of a QoS bandwidth limit rule. Changing this updates the
  /// maximum burst size in kilobits of the existing QoS bandwidth limit rule.
  final pulumi.Input<int>? maxBurstKbps;
  /// The maximum kilobits per second of a QoS bandwidth limit rule. Changing this updates the
  /// maximum kilobits per second of the existing QoS bandwidth limit rule.
  final pulumi.Input<int> maxKbps;
  /// The QoS policy reference. Changing this creates a new QoS bandwidth limit rule.
  final pulumi.Input<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS bandwidth limit rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS bandwidth limit rule.
  final pulumi.Input<String>? region;

  /// Creates a new [QosBandwidthLimitRuleArgs].
  /// [direction] The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// [maxBurstKbps] The maximum burst size in kilobits of a QoS bandwidth limit rule. Changing this updates the
  /// [maxKbps] The maximum kilobits per second of a QoS bandwidth limit rule. Changing this updates the
  /// [qosPolicyId] The QoS policy reference. Changing this creates a new QoS bandwidth limit rule.
  /// [region] The region in which to obtain the V2 Networking client.
  QosBandwidthLimitRuleArgs({
    String? direction,
    int? maxBurstKbps,
    required int maxKbps,
    required String qosPolicyId,
    String? region,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      maxBurstKbps = pulumi.Input.asOptionalInput<int>(maxBurstKbps),
      maxKbps = pulumi.Input.asInput<int>(maxKbps),
      qosPolicyId = pulumi.Input.asInput<String>(qosPolicyId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'maxBurstKbps': ?maxBurstKbps,
      'maxKbps': maxKbps,
      'qosPolicyId': qosPolicyId,
      'region': ?region,
    };
  }

  factory QosBandwidthLimitRuleArgs.fromMap(Map<String, dynamic> map) {
    return QosBandwidthLimitRuleArgs(
      direction: map['direction'] == null ? null : map['direction'] as String,
      maxBurstKbps: map['maxBurstKbps'] == null ? null : map['maxBurstKbps'] as int,
      maxKbps: map['maxKbps'] as int,
      qosPolicyId: map['qosPolicyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

