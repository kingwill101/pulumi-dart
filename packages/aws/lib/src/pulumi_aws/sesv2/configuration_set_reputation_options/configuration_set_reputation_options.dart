// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetReputationOptions {
  /// The date and time (in Unix time) when the reputation metrics were last given a fresh start. When your account is given a fresh start, your reputation metrics are calculated starting from the date of the fresh start.
  final String? lastFreshStart;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, tracking of reputation metrics is enabled for the configuration set. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, tracking of reputation metrics is disabled for the configuration set.
  final bool? reputationMetricsEnabled;

  ConfigurationSetReputationOptions({
    this.lastFreshStart,
    this.reputationMetricsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastFreshStartValue = lastFreshStart;
    if (lastFreshStartValue != null) {
      map['lastFreshStart'] = lastFreshStartValue;
    }
    final reputationMetricsEnabledValue = reputationMetricsEnabled;
    if (reputationMetricsEnabledValue != null) {
      map['reputationMetricsEnabled'] = reputationMetricsEnabledValue;
    }
    return map;
  }

  factory ConfigurationSetReputationOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetReputationOptions(
      lastFreshStart: map['lastFreshStart'] == null
          ? null
          : map['lastFreshStart'] as String,
      reputationMetricsEnabled: map['reputationMetricsEnabled'] == null
          ? null
          : map['reputationMetricsEnabled'] as bool,
    );
  }
}
