// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Google Cloud Storage.
class GoogleCloudStorageLinkedServiceResponse {
  /// The access key identifier of the Google Cloud Storage Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The secret access key of the Google Cloud Storage Identity and Access Management (IAM) user.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? secretAccessKey;
  /// This value specifies the endpoint to access with the Google Cloud Storage Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serviceUrl;
  /// Type of linked service.
  /// Expected value is 'GoogleCloudStorage'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [GoogleCloudStorageLinkedServiceResponse].
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
  GoogleCloudStorageLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretAccessKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(secretAccessKey, (value) => value.toMap()),
      'serviceUrl': ?serviceUrl,
      'type': type,
      'version': ?version,
    };
  }

  factory GoogleCloudStorageLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudStorageLinkedServiceResponse(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['secretAccessKey'] as Map).cast<String, dynamic>())).input(),
      serviceUrl: map['serviceUrl'] == null ? null : (map['serviceUrl']).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

