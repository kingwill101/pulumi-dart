// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// Azure Batch linked service.
class AzureBatchLinkedService {
  /// The Azure Batch account access key.
  final pulumi.Input<AzureKeyVaultSecretReference>? accessKey;
  /// The Azure Batch account name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> accountName;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The Azure Batch URI. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> batchUri;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The Azure Storage linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The Azure Batch pool name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> poolName;
  /// Type of linked service.
  /// Expected value is 'AzureBatch'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureBatchLinkedService].
  /// [accessKey] The Azure Batch account access key.
  /// [accountName] The Azure Batch account name. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [batchUri] The Azure Batch URI. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [linkedServiceName] The Azure Storage linked service reference.
  /// [parameters] Parameters for linked service.
  /// [poolName] The Azure Batch pool name. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureBatchLinkedService({
    this.accessKey,
    required this.accountName,
    this.annotations,
    required this.batchUri,
    this.connectVia,
    this.credential,
    this.description,
    this.encryptedCredential,
    required this.linkedServiceName,
    this.parameters,
    required this.poolName,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(accessKey, (value) => value.toMap()),
      'accountName': accountName,
      'annotations': ?annotations,
      'batchUri': batchUri,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolName': poolName,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureBatchLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureBatchLinkedService(
      accessKey: map['accessKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['accessKey']! as Map).cast<String, dynamic>())).input(),
      accountName: (map['accountName']).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      batchUri: (map['batchUri']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      credential: map['credential'] == null ? null : (CredentialReference.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      poolName: (map['poolName']).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

