// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for MongoDb data source.
class MongoDbLinkedService {
  /// Specifies whether to allow self-signed certificates from the server. The default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Database to verify the username and password. Type: string (or Expression with resultType string).
  final dynamic authSource;
  /// The authentication type to be used to connect to the MongoDB database.
  final String? authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The name of the MongoDB database that you want to access. Type: string (or Expression with resultType string).
  final dynamic databaseName;
  /// Linked service description.
  final String? description;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Password for authentication.
  final AzureKeyVaultSecretReference? password;
  /// The TCP port number that the MongoDB server uses to listen for client connections. The default value is 27017. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic port;
  /// The IP address or server name of the MongoDB server. Type: string (or Expression with resultType string).
  final dynamic server;
  /// Type of linked service.
  /// Expected value is 'MongoDb'.
  final String type;
  /// Username for authentication. Type: string (or Expression with resultType string).
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [MongoDbLinkedService].
  /// [allowSelfSignedServerCert] Specifies whether to allow self-signed certificates from the server. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authSource] Database to verify the username and password. Type: string (or Expression with resultType string).
  /// [authenticationType] The authentication type to be used to connect to the MongoDB database.
  /// [connectVia] The integration runtime reference.
  /// [databaseName] The name of the MongoDB database that you want to access. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [enableSsl] Specifies whether the connections to the server are encrypted using SSL. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password for authentication.
  /// [port] The TCP port number that the MongoDB server uses to listen for client connections. The default value is 27017. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [server] The IP address or server name of the MongoDB server. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  MongoDbLinkedService({
    this.allowSelfSignedServerCert,
    this.annotations,
    this.authSource,
    this.authenticationType,
    this.connectVia,
    required this.databaseName,
    this.description,
    this.enableSsl,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.port,
    required this.server,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSelfSignedServerCert': ?allowSelfSignedServerCert,
      'annotations': ?annotations,
      'authSource': ?authSource,
      'authenticationType': ?authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'databaseName': databaseName,
      'description': ?description,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'server': server,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory MongoDbLinkedService.fromMap(Map<String, dynamic> map) {
    return MongoDbLinkedService(
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : map['allowSelfSignedServerCert'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authSource: map['authSource'] == null ? null : map['authSource'],
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      databaseName: map['databaseName'],
      description: map['description'] == null ? null : map['description'] as String,
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      server: map['server'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

