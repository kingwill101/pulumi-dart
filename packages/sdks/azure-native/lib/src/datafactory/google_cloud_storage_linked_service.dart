// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Google Cloud Storage.
class GoogleCloudStorageLinkedService {
  /// The access key identifier of the Google Cloud Storage Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  final dynamic accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The secret access key of the Google Cloud Storage Identity and Access Management (IAM) user.
  final AzureKeyVaultSecretReference? secretAccessKey;
  /// This value specifies the endpoint to access with the Google Cloud Storage Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  final dynamic serviceUrl;
  /// Type of linked service.
  /// Expected value is 'GoogleCloudStorage'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [GoogleCloudStorageLinkedService].
  /// [accessKeyId] The access key identifier of the Google Cloud Storage Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [secretAccessKey] The secret access key of the Google Cloud Storage Identity and Access Management (IAM) user.
  /// [serviceUrl] This value specifies the endpoint to access with the Google Cloud Storage Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  GoogleCloudStorageLinkedService({
    this.accessKeyId,
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.secretAccessKey,
    this.serviceUrl,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'secretAccessKey': ?secretAccessKey == null ? null : secretAccessKey!.toMap(),
      'serviceUrl': ?serviceUrl,
      'type': type,
      'version': ?version,
    };
  }

  factory GoogleCloudStorageLinkedService.fromMap(Map<String, dynamic> map) {
    return GoogleCloudStorageLinkedService(
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      secretAccessKey: map['secretAccessKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['secretAccessKey'] as Map).cast<String, dynamic>()),
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

