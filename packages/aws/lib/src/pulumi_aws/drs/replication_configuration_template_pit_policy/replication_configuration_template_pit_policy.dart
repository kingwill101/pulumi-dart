// ignore_for_file: unused_element, unnecessary_cast

class ReplicationConfigurationTemplatePitPolicy {
  /// Whether this rule is enabled or not.
  final bool? enabled;

  /// How often, in the chosen units, a snapshot should be taken.
  final int interval;

  /// Duration to retain a snapshot for, in the chosen <span pulumi-lang-nodejs="`units`" pulumi-lang-dotnet="`Units`" pulumi-lang-go="`units`" pulumi-lang-python="`units`" pulumi-lang-yaml="`units`" pulumi-lang-java="`units`">`units`</span>.
  final int retentionDuration;

  /// ID of the rule. Valid values are integers.
  final int? ruleId;

  /// Units used to measure the <span pulumi-lang-nodejs="`interval`" pulumi-lang-dotnet="`Interval`" pulumi-lang-go="`interval`" pulumi-lang-python="`interval`" pulumi-lang-yaml="`interval`" pulumi-lang-java="`interval`">`interval`</span> and <span pulumi-lang-nodejs="`retentionDuration`" pulumi-lang-dotnet="`RetentionDuration`" pulumi-lang-go="`retentionDuration`" pulumi-lang-python="`retention_duration`" pulumi-lang-yaml="`retentionDuration`" pulumi-lang-java="`retentionDuration`">`retention_duration`</span>. Valid values are `MINUTE`, `HOUR`, and `DAY`.
  final String units;

  ReplicationConfigurationTemplatePitPolicy({
    this.enabled,
    required this.interval,
    required this.retentionDuration,
    this.ruleId,
    required this.units,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['interval'] = interval;
    map['retentionDuration'] = retentionDuration;
    final ruleIdValue = ruleId;
    if (ruleIdValue != null) {
      map['ruleId'] = ruleIdValue;
    }
    map['units'] = units;
    return map;
  }

  factory ReplicationConfigurationTemplatePitPolicy.fromMap(
      Map<String, dynamic> map) {
    return ReplicationConfigurationTemplatePitPolicy(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      interval: map['interval'] as int,
      retentionDuration: map['retentionDuration'] as int,
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as int,
      units: map['units'] as String,
    );
  }
}
