// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transport_layer_application_rule.dart';

/// Input properties used for looking up and filtering TransportLayerApplication resources.
class TransportLayerApplicationState {
  /// Layer 4 application ID.
  final pulumi.Input<int>? applicationId;
  /// Whether to enable China mainland network access optimization, default is disabled. Value range:
  final pulumi.Input<String>? crossBorderOptimization;
  /// IP access rule switch. When enabled, the WAF's IP access rules apply to the transport layer application.
  final pulumi.Input<String>? ipAccessRule;
  /// IPv6 switch.
  final pulumi.Input<String>? ipv6;
  /// Domain name of the transport layer application
  final pulumi.Input<String>? recordName;
  /// The list of forwarding rules. Rule details. For each rule, other parameters are required except comments. See `rules` below.
  final pulumi.Input<List<TransportLayerApplicationRule>>? rules;
  /// Site ID.
  final pulumi.Input<String>? siteId;
  /// Status of the transport layer application, modification and deletion are not allowed.
  final pulumi.Input<String>? status;

  /// Creates a new [TransportLayerApplicationState].
  /// [applicationId] Layer 4 application ID.
  /// [crossBorderOptimization] Whether to enable China mainland network access optimization, default is disabled. Value range:
  /// [ipAccessRule] IP access rule switch. When enabled, the WAF's IP access rules apply to the transport layer application.
  /// [ipv6] IPv6 switch.
  /// [recordName] Domain name of the transport layer application
  /// [rules] The list of forwarding rules. Rule details. For each rule, other parameters are required except comments. See `rules` below.
  /// [siteId] Site ID.
  /// [status] Status of the transport layer application, modification and deletion are not allowed.
  TransportLayerApplicationState({
    pulumi.Output<int>? applicationId,
    pulumi.Output<String>? crossBorderOptimization,
    pulumi.Output<String>? ipAccessRule,
    pulumi.Output<String>? ipv6,
    pulumi.Output<String>? recordName,
    pulumi.Output<List<TransportLayerApplicationRule>>? rules,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
  }) :
      applicationId = pulumi.Input.asOptionalInput<int>(applicationId),
      crossBorderOptimization = pulumi.Input.asOptionalInput<String>(crossBorderOptimization),
      ipAccessRule = pulumi.Input.asOptionalInput<String>(ipAccessRule),
      ipv6 = pulumi.Input.asOptionalInput<String>(ipv6),
      recordName = pulumi.Input.asOptionalInput<String>(recordName),
      rules = pulumi.Input.asOptionalInput<List<TransportLayerApplicationRule>>(rules),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'crossBorderOptimization': ?crossBorderOptimization,
      'ipAccessRule': ?ipAccessRule,
      'ipv6': ?ipv6,
      'recordName': ?recordName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<TransportLayerApplicationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TransportLayerApplicationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': ?siteId,
      'status': ?status,
    };
  }

  factory TransportLayerApplicationState.fromMap(Map<String, dynamic> map) {
    return TransportLayerApplicationState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<int>(map['applicationId'] as int),
      crossBorderOptimization: map['crossBorderOptimization'] == null ? null : pulumi.Output.create<String>(map['crossBorderOptimization'] as String),
      ipAccessRule: map['ipAccessRule'] == null ? null : pulumi.Output.create<String>(map['ipAccessRule'] as String),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<String>(map['ipv6'] as String),
      recordName: map['recordName'] == null ? null : pulumi.Output.create<String>(map['recordName'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<TransportLayerApplicationRule>>(pulumi.Input.decodeList<TransportLayerApplicationRule>(map['rules'], (value) => TransportLayerApplicationRule.fromMap((value as Map).cast<String, dynamic>()))),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

