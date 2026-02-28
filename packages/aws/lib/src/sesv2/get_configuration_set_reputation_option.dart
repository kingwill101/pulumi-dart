// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationSetReputationOption {
  /// The date and time (in Unix time) when the reputation metrics were last given a fresh start.
  final String lastFreshStart;
  /// Specifies whether tracking of reputation metrics is enabled.
  final bool reputationMetricsEnabled;

  /// Creates a new [GetConfigurationSetReputationOption].
  /// [lastFreshStart] The date and time (in Unix time) when the reputation metrics were last given a fresh start.
  /// [reputationMetricsEnabled] Specifies whether tracking of reputation metrics is enabled.
  GetConfigurationSetReputationOption({
    required this.lastFreshStart,
    required this.reputationMetricsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastFreshStart': lastFreshStart,
      'reputationMetricsEnabled': reputationMetricsEnabled,
    };
  }

  factory GetConfigurationSetReputationOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetReputationOption(
      lastFreshStart: map['lastFreshStart'] as String,
      reputationMetricsEnabled: map['reputationMetricsEnabled'] as bool,
    );
  }
}

