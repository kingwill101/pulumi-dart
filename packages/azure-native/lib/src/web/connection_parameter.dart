// ignore_for_file: unused_element, unnecessary_cast

import 'api_oauth_settings.dart';
import 'connection_parameter_type.dart';

/// Connection provider parameters
class ConnectionParameter {
  /// OAuth settings for the connection provider
  final ApiOAuthSettings? oAuthSettings;
  /// Type of the parameter
  final ConnectionParameterType? type;

  /// Creates a new [ConnectionParameter].
  /// [oAuthSettings] OAuth settings for the connection provider
  /// [type] Type of the parameter
  ConnectionParameter({
    this.oAuthSettings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuthSettings': ?oAuthSettings == null ? null : oAuthSettings!.toMap(),
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ConnectionParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionParameter(
      oAuthSettings: map['oAuthSettings'] == null ? null : ApiOAuthSettings.fromMap((map['oAuthSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : ConnectionParameterType.fromValue(map['type'] as String),
    );
  }
}

