// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Amazon S3.
class AmazonS3LinkedService {
  /// The access key identifier of the Amazon S3 Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  final dynamic accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type of S3. Allowed value: AccessKey (default) or TemporarySecurityCredentials. Type: string (or Expression with resultType string).
  final dynamic authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The secret access key of the Amazon S3 Identity and Access Management (IAM) user.
  final AzureKeyVaultSecretReference? secretAccessKey;
  /// This value specifies the endpoint to access with the S3 Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  final dynamic serviceUrl;
  /// The session token for the S3 temporary security credential.
  final AzureKeyVaultSecretReference? sessionToken;
  /// Type of linked service.
  /// Expected value is 'AmazonS3'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AmazonS3LinkedService].
  /// [accessKeyId] The access key identifier of the Amazon S3 Identity and Access Management (IAM) user. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type of S3. Allowed value: AccessKey (default) or TemporarySecurityCredentials. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [secretAccessKey] The secret access key of the Amazon S3 Identity and Access Management (IAM) user.
  /// [serviceUrl] This value specifies the endpoint to access with the S3 Connector. This is an optional property; change it only if you want to try a different service endpoint or want to switch between https and http. Type: string (or Expression with resultType string).
  /// [sessionToken] The session token for the S3 temporary security credential.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AmazonS3LinkedService({
    this.accessKeyId,
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.secretAccessKey,
    this.serviceUrl,
    this.sessionToken,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'secretAccessKey': ?secretAccessKey == null ? null : secretAccessKey!.toMap(),
      'serviceUrl': ?serviceUrl,
      'sessionToken': ?sessionToken == null ? null : sessionToken!.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory AmazonS3LinkedService.fromMap(Map<String, dynamic> map) {
    return AmazonS3LinkedService(
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      secretAccessKey: map['secretAccessKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['secretAccessKey'] as Map).cast<String, dynamic>()),
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'],
      sessionToken: map['sessionToken'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['sessionToken'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

