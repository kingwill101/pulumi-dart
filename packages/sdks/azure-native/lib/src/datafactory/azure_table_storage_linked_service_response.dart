// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// The azure table storage linked service.
class AzureTableStorageLinkedServiceResponse {
  /// The Azure key vault secret reference of accountKey in connection string.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? accountKey;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? sasToken;
  /// SAS URI of the Azure Storage resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? sasUri;
  /// Table service endpoint of the Azure Table Storage resource. It is mutually exclusive with connectionString, sasUri property.
  final pulumi.Input<dynamic>? serviceEndpoint;
  /// Type of linked service.
  /// Expected value is 'AzureTableStorage'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureTableStorageLinkedServiceResponse].
  /// [accountKey] The Azure key vault secret reference of accountKey in connection string.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [sasToken] The Azure key vault secret reference of sasToken in sas uri.
  /// [sasUri] SAS URI of the Azure Storage resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [serviceEndpoint] Table service endpoint of the Azure Table Storage resource. It is mutually exclusive with connectionString, sasUri property.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureTableStorageLinkedServiceResponse({
    this.accountKey,
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.sasToken,
    this.sasUri,
    this.serviceEndpoint,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(accountKey, (value) => value.toMap()),
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sasToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(sasToken, (value) => value.toMap()),
      'sasUri': ?sasUri,
      'serviceEndpoint': ?serviceEndpoint,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureTableStorageLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureTableStorageLinkedServiceResponse(
      accountKey: map['accountKey'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['accountKey']! as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']!).input(),
      credential: map['credential'] == null ? null : (CredentialReferenceResponse.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sasToken: map['sasToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['sasToken']! as Map).cast<String, dynamic>())).input(),
      sasUri: map['sasUri'] == null ? null : (map['sasUri']!).input(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : (map['serviceEndpoint']!).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

