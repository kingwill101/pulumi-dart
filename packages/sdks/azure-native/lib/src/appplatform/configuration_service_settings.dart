// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_git_property.dart';

/// The settings of Application Configuration Service.
class ConfigurationServiceSettings {
  /// Property of git environment.
  final pulumi.Input<ConfigurationServiceGitProperty>? gitProperty;
  /// How often (in seconds) to check repository updates. Minimum value is 0.
  final pulumi.Input<int>? refreshIntervalInSeconds;

  /// Creates a new [ConfigurationServiceSettings].
  /// [gitProperty] Property of git environment.
  /// [refreshIntervalInSeconds] How often (in seconds) to check repository updates. Minimum value is 0.
  const ConfigurationServiceSettings({
    this.gitProperty,
    this.refreshIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitProperty': ?pulumi.Input.mapOptionalInputValue<ConfigurationServiceGitProperty, Map<String, dynamic>>(gitProperty, (value) => value.toMap()),
      'refreshIntervalInSeconds': ?refreshIntervalInSeconds,
    };
  }

  factory ConfigurationServiceSettings.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceSettings(
      gitProperty: (() { final guardedValue = map['gitProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationServiceGitProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshIntervalInSeconds: (() { final guardedValue = map['refreshIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
