// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Netezza linked service.
class NetezzaLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// Database name for connection. Type: string.
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The port for the connection. Type: integer.
  final dynamic port;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReference? pwd;
  /// Specifies the security level for the driver connection to the data store. PreferredUnSecured : prefer unsecured, allow fallback to secured connection if required. OnlyUnSecured : strictly unsecured, no fallback.
  final String? securityLevel;
  /// Server name for connection. Type: string.
  final dynamic server;
  /// Type of linked service.
  /// Expected value is 'Netezza'.
  final String type;
  /// Username for authentication. Type: string.
  final dynamic uid;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [NetezzaLinkedService].
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
  NetezzaLinkedService({
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
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'port': ?port,
      'pwd': ?pwd == null ? null : pwd!.toMap(),
      'securityLevel': ?securityLevel,
      'server': ?server,
      'type': type,
      'uid': ?uid,
      'version': ?version,
    };
  }

  factory NetezzaLinkedService.fromMap(Map<String, dynamic> map) {
    return NetezzaLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      port: map['port'] == null ? null : map['port'],
      pwd: map['pwd'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['pwd'] as Map).cast<String, dynamic>()),
      securityLevel: map['securityLevel'] == null ? null : map['securityLevel'] as String,
      server: map['server'] == null ? null : map['server'],
      type: map['type'] as String,
      uid: map['uid'] == null ? null : map['uid'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

