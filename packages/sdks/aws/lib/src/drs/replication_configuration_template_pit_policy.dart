// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationConfigurationTemplatePitPolicy {
  /// Whether this rule is enabled or not.
  final pulumi.Input<bool>? enabled;

  /// How often, in the chosen units, a snapshot should be taken.
  final pulumi.Input<int> interval;

  /// Duration to retain a snapshot for, in the chosen `units`.
  final pulumi.Input<int> retentionDuration;

  /// ID of the rule. Valid values are integers.
  final pulumi.Input<int>? ruleId;

  /// Units used to measure the `interval` and `retention_duration`. Valid values are `MINUTE`, `HOUR`, and `DAY`.
  final pulumi.Input<String> units;

  /// Creates a new [ReplicationConfigurationTemplatePitPolicy].
  /// [enabled] Whether this rule is enabled or not.
  /// [interval] How often, in the chosen units, a snapshot should be taken.
  /// [retentionDuration] Duration to retain a snapshot for, in the chosen `units`.
  /// [ruleId] ID of the rule. Valid values are integers.
  /// [units] Units used to measure the `interval` and `retention_duration`. Valid values are `MINUTE`, `HOUR`, and `DAY`.
  ReplicationConfigurationTemplatePitPolicy({
    this.enabled,
    required this.interval,
    required this.retentionDuration,
    this.ruleId,
    required this.units,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'interval': interval,
      'retentionDuration': retentionDuration,
      'ruleId': ?ruleId,
      'units': units,
    };
  }

  factory ReplicationConfigurationTemplatePitPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicationConfigurationTemplatePitPolicy(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      retentionDuration: pulumi.Input.fromValue(
        map['retentionDuration'] as int,
      ),
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      units: pulumi.Input.fromValue(map['units'] as String),
    );
  }
}
