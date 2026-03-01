// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transport_layer_application_rule.dart';

/// {@template pulumi_esa_transport_layer_application_transport_layer_application_args_doc}
/// The set of arguments for TransportLayerApplication.
/// {@endtemplate}
/// {@macro pulumi_esa_transport_layer_application_transport_layer_application_args_doc}
class TransportLayerApplicationArgs {
  /// Whether to enable China mainland network access optimization, default is disabled. Value range:
  final pulumi.Input<String>? crossBorderOptimization;
  /// IP access rule switch. When enabled, the WAF's IP access rules apply to the transport layer application.
  final pulumi.Input<String>? ipAccessRule;
  /// IPv6 switch.
  final pulumi.Input<String>? ipv6;
  /// Domain name of the transport layer application
  final pulumi.Input<String> recordName;
  /// The list of forwarding rules. Rule details. For each rule, other parameters are required except comments. See `rules` below.
  final pulumi.Input<List<TransportLayerApplicationRule>> rules;
  /// Site ID.
  final pulumi.Input<String> siteId;

  /// Creates a new [TransportLayerApplicationArgs].
  /// [crossBorderOptimization] Whether to enable China mainland network access optimization, default is disabled. Value range:
  /// [ipAccessRule] IP access rule switch. When enabled, the WAF's IP access rules apply to the transport layer application.
  /// [ipv6] IPv6 switch.
  /// [recordName] Domain name of the transport layer application
  /// [rules] The list of forwarding rules. Rule details. For each rule, other parameters are required except comments. See `rules` below.
  /// [siteId] Site ID.
  TransportLayerApplicationArgs({
    String? crossBorderOptimization,
    String? ipAccessRule,
    String? ipv6,
    required String recordName,
    required List<TransportLayerApplicationRule> rules,
    required String siteId,
  }) :
      crossBorderOptimization = pulumi.Input.asOptionalInput<String>(crossBorderOptimization),
      ipAccessRule = pulumi.Input.asOptionalInput<String>(ipAccessRule),
      ipv6 = pulumi.Input.asOptionalInput<String>(ipv6),
      recordName = pulumi.Input.asInput<String>(recordName),
      rules = pulumi.Input.asInput<List<TransportLayerApplicationRule>>(rules),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossBorderOptimization': ?crossBorderOptimization,
      'ipAccessRule': ?ipAccessRule,
      'ipv6': ?ipv6,
      'recordName': recordName,
      'rules': pulumi.Input.mapInputValue<List<TransportLayerApplicationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TransportLayerApplicationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': siteId,
    };
  }

  factory TransportLayerApplicationArgs.fromMap(Map<String, dynamic> map) {
    return TransportLayerApplicationArgs(
      crossBorderOptimization: map['crossBorderOptimization'] == null ? null : map['crossBorderOptimization'] as String,
      ipAccessRule: map['ipAccessRule'] == null ? null : map['ipAccessRule'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as String,
      recordName: map['recordName'] as String,
      rules: pulumi.Input.decodeList<TransportLayerApplicationRule>(map['rules'], (value) => TransportLayerApplicationRule.fromMap((value as Map).cast<String, dynamic>())),
      siteId: map['siteId'] as String,
    );
  }
}

