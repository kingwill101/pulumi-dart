// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetReputationOption {
  /// Date and time (in Unix time) when the reputation metrics were last given a fresh start.
  final pulumi.Input<String> lastFreshStart;
  /// Whether tracking of reputation metrics is enabled.
  final pulumi.Input<bool> reputationMetricsEnabled;

  /// Creates a new [GetConfigurationSetReputationOption].
  /// [lastFreshStart] Date and time (in Unix time) when the reputation metrics were last given a fresh start.
  /// [reputationMetricsEnabled] Whether tracking of reputation metrics is enabled.
  const GetConfigurationSetReputationOption({
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
      lastFreshStart: pulumi.Input.fromValue(map['lastFreshStart'] as String),
      reputationMetricsEnabled: pulumi.Input.fromValue(map['reputationMetricsEnabled'] as bool),
    );
  }
}
