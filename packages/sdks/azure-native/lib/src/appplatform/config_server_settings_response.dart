// ignore_for_file: unused_element, unnecessary_cast

import 'config_server_git_property_response.dart';

/// The settings of config server.
class ConfigServerSettingsResponse {
  /// Property of git environment.
  final ConfigServerGitPropertyResponse? gitProperty;

  /// Creates a new [ConfigServerSettingsResponse].
  /// [gitProperty] Property of git environment.
  ConfigServerSettingsResponse({
    this.gitProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitProperty': ?gitProperty == null ? null : gitProperty!.toMap(),
    };
  }

  factory ConfigServerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigServerSettingsResponse(
      gitProperty: map['gitProperty'] == null ? null : ConfigServerGitPropertyResponse.fromMap((map['gitProperty'] as Map).cast<String, dynamic>()),
    );
  }
}

