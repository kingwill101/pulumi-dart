// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// The storage account linked service.
class AzureStorageLinkedServiceResponse {
  /// The Azure key vault secret reference of accountKey in connection string.
  final AzureKeyVaultSecretReferenceResponse? accountKey;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final AzureKeyVaultSecretReferenceResponse? sasToken;
  /// SAS URI of the Azure Storage resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic sasUri;
  /// Type of linked service.
  /// Expected value is 'AzureStorage'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureStorageLinkedServiceResponse].
  /// [accountKey] The Azure key vault secret reference of accountKey in connection string.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [sasToken] The Azure key vault secret reference of sasToken in sas uri.
  /// [sasUri] SAS URI of the Azure Storage resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureStorageLinkedServiceResponse({
    this.accountKey,
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.sasToken,
    this.sasUri,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey == null ? null : accountKey!.toMap(),
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'sasToken': ?sasToken == null ? null : sasToken!.toMap(),
      'sasUri': ?sasUri,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureStorageLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageLinkedServiceResponse(
      accountKey: map['accountKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['accountKey'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      sasToken: map['sasToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['sasToken'] as Map).cast<String, dynamic>()),
      sasUri: map['sasUri'] == null ? null : map['sasUri'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

