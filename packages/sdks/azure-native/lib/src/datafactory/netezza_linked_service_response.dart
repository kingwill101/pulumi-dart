// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Netezza linked service.
class NetezzaLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;

  /// Database name for connection. Type: string.
  final pulumi.Input<dynamic>? database;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The port for the connection. Type: integer.
  final pulumi.Input<dynamic>? port;

  /// The Azure key vault secret reference of password in connection string.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? pwd;

  /// Specifies the security level for the driver connection to the data store. PreferredUnSecured : prefer unsecured, allow fallback to secured connection if required. OnlyUnSecured : strictly unsecured, no fallback.
  final pulumi.Input<String>? securityLevel;

  /// Server name for connection. Type: string.
  final pulumi.Input<dynamic>? server;

  /// Type of linked service.
  /// Expected value is 'Netezza'.
  final pulumi.Input<String> type;

  /// Username for authentication. Type: string.
  final pulumi.Input<dynamic>? uid;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [NetezzaLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] Database name for connection. Type: string.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [port] The port for the connection. Type: integer.
  /// [pwd] The Azure key vault secret reference of password in connection string.
  /// [securityLevel] Specifies the security level for the driver connection to the data store. PreferredUnSecured : prefer unsecured, allow fallback to secured connection if required. OnlyUnSecured : strictly unsecured, no fallback.
  /// [server] Server name for connection. Type: string.
  /// [type] Type of linked service.
  /// [uid] Username for authentication. Type: string.
  /// [version] Version of the linked service.
  NetezzaLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.database,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.port,
    this.pwd,
    this.securityLevel,
    this.server,
    required this.type,
    this.uid,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'port': ?port,
      'pwd':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(pwd, (value) => value.toMap()),
      'securityLevel': ?securityLevel,
      'server': ?server,
      'type': type,
      'uid': ?uid,
      'version': ?version,
    };
  }

  factory NetezzaLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return NetezzaLinkedServiceResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      pwd: (() {
        final guardedValue = map['pwd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityLevel: (() {
        final guardedValue = map['securityLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
