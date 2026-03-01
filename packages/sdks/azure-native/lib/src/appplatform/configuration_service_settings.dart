// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_service_git_property.dart';

/// The settings of Application Configuration Service.
class ConfigurationServiceSettings {
  /// Property of git environment.
  final ConfigurationServiceGitProperty? gitProperty;
  /// How often (in seconds) to check repository updates. Minimum value is 0.
  final int? refreshIntervalInSeconds;

  /// Creates a new [ConfigurationServiceSettings].
  /// [gitProperty] Property of git environment.
  /// [refreshIntervalInSeconds] How often (in seconds) to check repository updates. Minimum value is 0.
  ConfigurationServiceSettings({
    this.gitProperty,
    this.refreshIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitProperty': ?gitProperty == null ? null : gitProperty!.toMap(),
      'refreshIntervalInSeconds': ?refreshIntervalInSeconds,
    };
  }

  factory ConfigurationServiceSettings.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceSettings(
      gitProperty: map['gitProperty'] == null ? null : ConfigurationServiceGitProperty.fromMap((map['gitProperty'] as Map).cast<String, dynamic>()),
      refreshIntervalInSeconds: map['refreshIntervalInSeconds'] == null ? null : map['refreshIntervalInSeconds'] as int,
    );
  }
}

