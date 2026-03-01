// ignore_for_file: unused_element, unnecessary_cast

import 'config_server_git_property.dart';

/// The settings of config server.
class ConfigServerSettings {
  /// Property of git environment.
  final ConfigServerGitProperty? gitProperty;

  /// Creates a new [ConfigServerSettings].
  /// [gitProperty] Property of git environment.
  ConfigServerSettings({
    this.gitProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitProperty': ?gitProperty == null ? null : gitProperty!.toMap(),
    };
  }

  factory ConfigServerSettings.fromMap(Map<String, dynamic> map) {
    return ConfigServerSettings(
      gitProperty: map['gitProperty'] == null ? null : ConfigServerGitProperty.fromMap((map['gitProperty'] as Map).cast<String, dynamic>()),
    );
  }
}

