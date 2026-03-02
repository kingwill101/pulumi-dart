// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Cassandra data source.
class CassandraLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// AuthenticationType to be used for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Host name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Password for authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// The port for the connection. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? port;
  /// Type of linked service.
  /// Expected value is 'Cassandra'.
  final pulumi.Input<String> type;
  /// Username for authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [CassandraLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] AuthenticationType to be used for connection. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] Host name for connection. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password for authentication.
  /// [port] The port for the connection. Type: integer (or Expression with resultType integer).
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  CassandraLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.host,
    this.parameters,
    this.password,
    this.port,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'port': ?port,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory CassandraLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return CassandraLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      host: (map['host']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      type: (map['type'] as String).input(),
      username: map['username'] == null ? null : (map['username']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

