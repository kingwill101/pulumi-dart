// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// SAP HANA Linked Service.
class SapHanaLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to be used to connect to the SAP HANA server.
  final String? authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// SAP HANA ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Password to access the SAP HANA server.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// Host name of the SAP HANA server. Type: string (or Expression with resultType string).
  final dynamic server;
  /// Type of linked service.
  /// Expected value is 'SapHana'.
  final String type;
  /// Username to access the SAP HANA server. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [SapHanaLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to be used to connect to the SAP HANA server.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] SAP HANA ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password to access the SAP HANA server.
  /// [server] Host name of the SAP HANA server. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [userName] Username to access the SAP HANA server. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  SapHanaLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.connectionString,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.server,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'server': ?server,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SapHanaLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SapHanaLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      server: map['server'] == null ? null : map['server'],
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

