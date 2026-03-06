// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_server_git_property_response.dart';

/// The settings of config server.
class ConfigServerSettingsResponse {
  /// Property of git environment.
  final pulumi.Input<ConfigServerGitPropertyResponse>? gitProperty;

  /// Creates a new [ConfigServerSettingsResponse].
  /// [gitProperty] Property of git environment.
  const ConfigServerSettingsResponse({
    this.gitProperty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitProperty': ?pulumi.Input.mapOptionalInputValue<ConfigServerGitPropertyResponse, Map<String, dynamic>>(gitProperty, (value) => value.toMap()),
    };
  }

  factory ConfigServerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigServerSettingsResponse(
      gitProperty: (() { final guardedValue = map['gitProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigServerGitPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

