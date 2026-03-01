// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Open Database Connectivity (ODBC) linked service.
class OdbcLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Type of authentication used to connect to the ODBC data store. Possible values are: Anonymous and Basic. Type: string (or Expression with resultType string).
  final dynamic authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The non-access credential portion of the connection string as well as an optional encrypted credential. Type: string, or SecureString, or AzureKeyVaultSecretReference, or Expression with resultType string.
  final dynamic connectionString;
  /// The access credential portion of the connection string specified in driver-specific property-value format.
  final AzureKeyVaultSecretReferenceResponse? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Password for Basic authentication.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// Type of linked service.
  /// Expected value is 'Odbc'.
  final String type;
  /// User name for Basic authentication. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [OdbcLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] Type of authentication used to connect to the ODBC data store. Possible values are: Anonymous and Basic. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The non-access credential portion of the connection string as well as an optional encrypted credential. Type: string, or SecureString, or AzureKeyVaultSecretReference, or Expression with resultType string.
  /// [credential] The access credential portion of the connection string specified in driver-specific property-value format.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password for Basic authentication.
  /// [type] Type of linked service.
  /// [userName] User name for Basic authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  OdbcLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    required this.connectionString,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': connectionString,
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory OdbcLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return OdbcLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'],
      credential: map['credential'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

