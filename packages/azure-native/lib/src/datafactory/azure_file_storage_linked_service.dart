// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure File Storage linked service.
class AzureFileStorageLinkedService {
  /// The Azure key vault secret reference of accountKey in connection string.
  final AzureKeyVaultSecretReference? accountKey;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The azure file share name. It is required when auth with accountKey/sasToken. Type: string (or Expression with resultType string).
  final dynamic fileShare;
  /// Host name of the server. Type: string (or Expression with resultType string).
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Password to logon the server.
  final AzureKeyVaultSecretReference? password;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final AzureKeyVaultSecretReference? sasToken;
  /// SAS URI of the Azure File resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic sasUri;
  /// File service endpoint of the Azure File Storage resource. It is mutually exclusive with connectionString, sasUri property.
  final dynamic serviceEndpoint;
  /// The azure file share snapshot version. Type: string (or Expression with resultType string).
  final dynamic snapshot;
  /// Type of linked service.
  /// Expected value is 'AzureFileStorage'.
  final String type;
  /// User ID to logon the server. Type: string (or Expression with resultType string).
  final dynamic userId;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureFileStorageLinkedService].
  /// [accountKey] The Azure key vault secret reference of accountKey in connection string.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [fileShare] The azure file share name. It is required when auth with accountKey/sasToken. Type: string (or Expression with resultType string).
  /// [host] Host name of the server. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password to logon the server.
  /// [sasToken] The Azure key vault secret reference of sasToken in sas uri.
  /// [sasUri] SAS URI of the Azure File resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [serviceEndpoint] File service endpoint of the Azure File Storage resource. It is mutually exclusive with connectionString, sasUri property.
  /// [snapshot] The azure file share snapshot version. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [userId] User ID to logon the server. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AzureFileStorageLinkedService({
    this.accountKey,
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.fileShare,
    this.host,
    this.parameters,
    this.password,
    this.sasToken,
    this.sasUri,
    this.serviceEndpoint,
    this.snapshot,
    required this.type,
    this.userId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey == null ? null : accountKey!.toMap(),
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'fileShare': ?fileShare,
      'host': ?host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'sasToken': ?sasToken == null ? null : sasToken!.toMap(),
      'sasUri': ?sasUri,
      'serviceEndpoint': ?serviceEndpoint,
      'snapshot': ?snapshot,
      'type': type,
      'userId': ?userId,
      'version': ?version,
    };
  }

  factory AzureFileStorageLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureFileStorageLinkedService(
      accountKey: map['accountKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['accountKey'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      fileShare: map['fileShare'] == null ? null : map['fileShare'],
      host: map['host'] == null ? null : map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      sasToken: map['sasToken'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['sasToken'] as Map).cast<String, dynamic>()),
      sasUri: map['sasUri'] == null ? null : map['sasUri'],
      serviceEndpoint: map['serviceEndpoint'] == null ? null : map['serviceEndpoint'],
      snapshot: map['snapshot'] == null ? null : map['snapshot'],
      type: map['type'] as String,
      userId: map['userId'] == null ? null : map['userId'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

