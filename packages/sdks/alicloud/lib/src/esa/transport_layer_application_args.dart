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
    this.crossBorderOptimization,
    this.ipAccessRule,
    this.ipv6,
    required this.recordName,
    required this.rules,
    required this.siteId,
  });

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
      crossBorderOptimization: (() { final guardedValue = map['crossBorderOptimization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAccessRule: (() { final guardedValue = map['ipAccessRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordName: pulumi.Input.fromValue(map['recordName'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<TransportLayerApplicationRule>(map['rules']!, (value) => TransportLayerApplicationRule.fromMap((value as Map).cast<String, dynamic>()))),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

