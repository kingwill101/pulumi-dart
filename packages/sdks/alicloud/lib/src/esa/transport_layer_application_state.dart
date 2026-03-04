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
    this.applicationId,
    this.crossBorderOptimization,
    this.ipAccessRule,
    this.ipv6,
    this.recordName,
    this.rules,
    this.siteId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'crossBorderOptimization': ?crossBorderOptimization,
      'ipAccessRule': ?ipAccessRule,
      'ipv6': ?ipv6,
      'recordName': ?recordName,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<TransportLayerApplicationRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  TransportLayerApplicationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'siteId': ?siteId,
      'status': ?status,
    };
  }

  factory TransportLayerApplicationState.fromMap(Map<String, dynamic> map) {
    return TransportLayerApplicationState(
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      crossBorderOptimization: (() {
        final guardedValue = map['crossBorderOptimization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAccessRule: (() {
        final guardedValue = map['ipAccessRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6: (() {
        final guardedValue = map['ipv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordName: (() {
        final guardedValue = map['recordName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TransportLayerApplicationRule>(
            guardedValue,
            (value) => TransportLayerApplicationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
