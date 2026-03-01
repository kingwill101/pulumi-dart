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
  final AzureKeyVaultSecretReference? accessKey;
  /// The Azure Batch account name. Type: string (or Expression with resultType string).
  final dynamic accountName;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The Azure Batch URI. Type: string (or Expression with resultType string).
  final dynamic batchUri;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The Azure Storage linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The Azure Batch pool name. Type: string (or Expression with resultType string).
  final dynamic poolName;
  /// Type of linked service.
  /// Expected value is 'AzureBatch'.
  final String type;
  /// Version of the linked service.
  final String? version;

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
      'accessKey': ?accessKey == null ? null : accessKey!.toMap(),
      'accountName': accountName,
      'annotations': ?annotations,
      'batchUri': batchUri,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'linkedServiceName': linkedServiceName.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'poolName': poolName,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureBatchLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureBatchLinkedService(
      accessKey: map['accessKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['accessKey'] as Map).cast<String, dynamic>()),
      accountName: map['accountName'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      batchUri: map['batchUri'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      poolName: map['poolName'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

