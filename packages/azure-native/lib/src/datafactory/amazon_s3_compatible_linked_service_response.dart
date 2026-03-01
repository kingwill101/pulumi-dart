// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Amazon S3 Compatible.
class AmazonS3CompatibleLinkedServiceResponse {
  /// The access key identifier of the Amazon S3 Compatible Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  final dynamic accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// If true, use S3 path-style access instead of virtual hosted-style access. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic forcePathStyle;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The secret access key of the Amazon S3 Compatible Identity and Access Management (IAM) user.
  final AzureKeyVaultSecretReferenceResponse? secretAccessKey;
  /// This value specifies the endpoint to access with the Amazon S3 Compatible Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  final dynamic serviceUrl;
  /// Type of linked service.
  /// Expected value is 'AmazonS3Compatible'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AmazonS3CompatibleLinkedServiceResponse].
  /// [accessKeyId] The access key identifier of the Amazon S3 Compatible Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [forcePathStyle] If true, use S3 path-style access instead of virtual hosted-style access. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [parameters] Parameters for linked service.
  /// [secretAccessKey] The secret access key of the Amazon S3 Compatible Identity and Access Management (IAM) user.
  /// [serviceUrl] This value specifies the endpoint to access with the Amazon S3 Compatible Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AmazonS3CompatibleLinkedServiceResponse({
    this.accessKeyId,
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.forcePathStyle,
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
      'forcePathStyle': ?forcePathStyle,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'secretAccessKey': ?secretAccessKey == null ? null : secretAccessKey!.toMap(),
      'serviceUrl': ?serviceUrl,
      'type': type,
      'version': ?version,
    };
  }

  factory AmazonS3CompatibleLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AmazonS3CompatibleLinkedServiceResponse(
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      forcePathStyle: map['forcePathStyle'] == null ? null : map['forcePathStyle'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      secretAccessKey: map['secretAccessKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['secretAccessKey'] as Map).cast<String, dynamic>()),
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

