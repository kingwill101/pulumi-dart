// ignore_for_file: unused_element, unnecessary_cast

class ReplicationConfigurationTemplatePitPolicy {
  /// Whether this rule is enabled or not.
  final bool? enabled;

  /// How often, in the chosen units, a snapshot should be taken.
  final int interval;

  /// Duration to retain a snapshot for, in the chosen `units`.
  final int retentionDuration;

  /// ID of the rule. Valid values are integers.
  final int? ruleId;

  /// Units used to measure the `interval` and `retention_duration`. Valid values are `MINUTE`, `HOUR`, and `DAY`.
  final String units;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      interval: map['interval'] as int,
      retentionDuration: map['retentionDuration'] as int,
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as int,
      units: map['units'] as String,
    );
  }
}
