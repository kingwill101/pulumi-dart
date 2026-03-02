// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure File Storage linked service.
class AzureFileStorageLinkedService {
  /// The Azure key vault secret reference of accountKey in connection string.
  final pulumi.Input<AzureKeyVaultSecretReference>? accountKey;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The azure file share name. It is required when auth with accountKey/sasToken. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileShare;
  /// Host name of the server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Password to logon the server.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final pulumi.Input<AzureKeyVaultSecretReference>? sasToken;
  /// SAS URI of the Azure File resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? sasUri;
  /// File service endpoint of the Azure File Storage resource. It is mutually exclusive with connectionString, sasUri property.
  final pulumi.Input<dynamic>? serviceEndpoint;
  /// The azure file share snapshot version. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? snapshot;
  /// Type of linked service.
  /// Expected value is 'AzureFileStorage'.
  final pulumi.Input<String> type;
  /// User ID to logon the server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userId;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'accountKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(accountKey, (value) => value.toMap()),
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'fileShare': ?fileShare,
      'host': ?host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'sasToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(sasToken, (value) => value.toMap()),
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
      accountKey: map['accountKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['accountKey'] as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']).input(),
      credential: map['credential'] == null ? null : (CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      fileShare: map['fileShare'] == null ? null : (map['fileShare']).input(),
      host: map['host'] == null ? null : (map['host']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      sasToken: map['sasToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['sasToken'] as Map).cast<String, dynamic>())).input(),
      sasUri: map['sasUri'] == null ? null : (map['sasUri']).input(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : (map['serviceEndpoint']).input(),
      snapshot: map['snapshot'] == null ? null : (map['snapshot']).input(),
      type: (map['type'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

