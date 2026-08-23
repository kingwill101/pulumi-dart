// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_authentication_configuration_basic_authentication_credentials.dart';
import 'connection_authentication_configuration_oauth2_properties.dart';

class ConnectionAuthenticationConfiguration {
  /// Type of authentication. Valid values: `BASIC`, `CUSTOM`, `IAM`, `OAUTH2`.
  final pulumi.Input<String> authenticationType;
  /// Basic authentication credentials. See `basicAuthenticationCredentials` below.
  final pulumi.Input<ConnectionAuthenticationConfigurationBasicAuthenticationCredentials>? basicAuthenticationCredentials;
  /// Map of custom authentication credentials.
  final pulumi.Input<Map<String, String>>? customAuthenticationCredentials;
  /// ARN of the KMS key used for encryption.
  final pulumi.Input<String>? kmsKeyArn;
  /// OAuth2 properties. See `oauth2Properties` below.
  final pulumi.Input<ConnectionAuthenticationConfigurationOauth2Properties>? oauth2Properties;
  /// ARN of the Secrets Manager secret containing credentials.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [ConnectionAuthenticationConfiguration].
  /// [authenticationType] Type of authentication. Valid values: `BASIC`, `CUSTOM`, `IAM`, `OAUTH2`.
  /// [basicAuthenticationCredentials] Basic authentication credentials. See `basicAuthenticationCredentials` below.
  /// [customAuthenticationCredentials] Map of custom authentication credentials.
  /// [kmsKeyArn] ARN of the KMS key used for encryption.
  /// [oauth2Properties] OAuth2 properties. See `oauth2Properties` below.
  /// [secretArn] ARN of the Secrets Manager secret containing credentials.
  const ConnectionAuthenticationConfiguration({
    required this.authenticationType,
    this.basicAuthenticationCredentials,
    this.customAuthenticationCredentials,
    this.kmsKeyArn,
    this.oauth2Properties,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'basicAuthenticationCredentials': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthenticationConfigurationBasicAuthenticationCredentials, Map<String, dynamic>>(basicAuthenticationCredentials, (value) => value.toMap()),
      'customAuthenticationCredentials': ?customAuthenticationCredentials,
      'kmsKeyArn': ?kmsKeyArn,
      'oauth2Properties': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthenticationConfigurationOauth2Properties, Map<String, dynamic>>(oauth2Properties, (value) => value.toMap()),
      'secretArn': ?secretArn,
    };
  }

  factory ConnectionAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthenticationConfiguration(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      basicAuthenticationCredentials: (() { final guardedValue = map['basicAuthenticationCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthenticationConfigurationBasicAuthenticationCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customAuthenticationCredentials: (() { final guardedValue = map['customAuthenticationCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2Properties: (() { final guardedValue = map['oauth2Properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthenticationConfigurationOauth2Properties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
