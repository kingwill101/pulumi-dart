// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_authentication_configuration_basic_authentication_credential.dart';
import 'get_connection_authentication_configuration_oauth2_property.dart';

class GetConnectionAuthenticationConfiguration {
  /// Type of authentication used for the connection.
  final pulumi.Input<String> authenticationType;
  /// Basic authentication credentials. See `basicAuthenticationCredentials` Block for details.
  final pulumi.Input<List<GetConnectionAuthenticationConfigurationBasicAuthenticationCredential>> basicAuthenticationCredentials;
  /// Map of credentials used when the authentication type is custom authentication.
  final pulumi.Input<Map<String, String>> customAuthenticationCredentials;
  /// ARN of the KMS key used to encrypt the connection.
  final pulumi.Input<String> kmsKeyArn;
  /// OAuth2 properties. See `oauth2Properties` Block for details.
  final pulumi.Input<List<GetConnectionAuthenticationConfigurationOauth2Property>> oauth2Properties;
  /// ARN of the secret used for authentication.
  final pulumi.Input<String> secretArn;

  /// Creates a new [GetConnectionAuthenticationConfiguration].
  /// [authenticationType] Type of authentication used for the connection.
  /// [basicAuthenticationCredentials] Basic authentication credentials. See `basicAuthenticationCredentials` Block for details.
  /// [customAuthenticationCredentials] Map of credentials used when the authentication type is custom authentication.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the connection.
  /// [oauth2Properties] OAuth2 properties. See `oauth2Properties` Block for details.
  /// [secretArn] ARN of the secret used for authentication.
  const GetConnectionAuthenticationConfiguration({
    required this.authenticationType,
    required this.basicAuthenticationCredentials,
    required this.customAuthenticationCredentials,
    required this.kmsKeyArn,
    required this.oauth2Properties,
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'basicAuthenticationCredentials': pulumi.Input.mapInputValue<List<GetConnectionAuthenticationConfigurationBasicAuthenticationCredential>, List<Map<String, dynamic>>>(basicAuthenticationCredentials, (value) => pulumi.Input.encodeList<GetConnectionAuthenticationConfigurationBasicAuthenticationCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customAuthenticationCredentials': customAuthenticationCredentials,
      'kmsKeyArn': kmsKeyArn,
      'oauth2Properties': pulumi.Input.mapInputValue<List<GetConnectionAuthenticationConfigurationOauth2Property>, List<Map<String, dynamic>>>(oauth2Properties, (value) => pulumi.Input.encodeList<GetConnectionAuthenticationConfigurationOauth2Property, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretArn': secretArn,
    };
  }

  factory GetConnectionAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return GetConnectionAuthenticationConfiguration(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      basicAuthenticationCredentials: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectionAuthenticationConfigurationBasicAuthenticationCredential>(map['basicAuthenticationCredentials']!, (value) => GetConnectionAuthenticationConfigurationBasicAuthenticationCredential.fromMap((value as Map).cast<String, dynamic>()))),
      customAuthenticationCredentials: pulumi.Input.fromValue((map['customAuthenticationCredentials'] as Map).cast<String, String>()),
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      oauth2Properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectionAuthenticationConfigurationOauth2Property>(map['oauth2Properties']!, (value) => GetConnectionAuthenticationConfigurationOauth2Property.fromMap((value as Map).cast<String, dynamic>()))),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
