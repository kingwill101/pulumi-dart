// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetReputationOptions {
  /// The date and time (in Unix time) when the reputation metrics were last given a fresh start. When your account is given a fresh start, your reputation metrics are calculated starting from the date of the fresh start.
  final pulumi.Input<String>? lastFreshStart;
  /// If `true`, tracking of reputation metrics is enabled for the configuration set. If `false`, tracking of reputation metrics is disabled for the configuration set.
  final pulumi.Input<bool>? reputationMetricsEnabled;

  /// Creates a new [ConfigurationSetReputationOptions].
  /// [lastFreshStart] The date and time (in Unix time) when the reputation metrics were last given a fresh start. When your account is given a fresh start, your reputation metrics are calculated starting from the date of the fresh start.
  /// [reputationMetricsEnabled] If `true`, tracking of reputation metrics is enabled for the configuration set. If `false`, tracking of reputation metrics is disabled for the configuration set.
  const ConfigurationSetReputationOptions({
    this.lastFreshStart,
    this.reputationMetricsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastFreshStart': ?lastFreshStart,
      'reputationMetricsEnabled': ?reputationMetricsEnabled,
    };
  }

  factory ConfigurationSetReputationOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetReputationOptions(
      lastFreshStart: (() { final guardedValue = map['lastFreshStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reputationMetricsEnabled: (() { final guardedValue = map['reputationMetricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

