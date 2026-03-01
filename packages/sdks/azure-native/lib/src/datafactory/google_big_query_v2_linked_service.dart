// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Google BigQuery service linked service.
class GoogleBigQueryV2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The OAuth 2.0 authentication mechanism used for authentication.
  final String authenticationType;
  /// The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  final dynamic clientId;
  /// The client secret of the google application used to acquire the refresh token.
  final AzureKeyVaultSecretReference? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The content of the .json key file that is used to authenticate the service account. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? keyFileContent;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The default BigQuery project id to query against. Type: string (or Expression with resultType string).
  final dynamic projectId;
  /// The refresh token obtained from Google for authorizing access to BigQuery for UserAuthentication.
  final AzureKeyVaultSecretReference? refreshToken;
  /// Type of linked service.
  /// Expected value is 'GoogleBigQueryV2'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [GoogleBigQueryV2LinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The OAuth 2.0 authentication mechanism used for authentication.
  /// [clientId] The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret of the google application used to acquire the refresh token.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [keyFileContent] The content of the .json key file that is used to authenticate the service account. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [projectId] The default BigQuery project id to query against. Type: string (or Expression with resultType string).
  /// [refreshToken] The refresh token obtained from Google for authorizing access to BigQuery for UserAuthentication.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  GoogleBigQueryV2LinkedService({
    this.annotations,
    required this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.keyFileContent,
    this.parameters,
    required this.projectId,
    this.refreshToken,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'keyFileContent': ?keyFileContent == null ? null : keyFileContent!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'projectId': projectId,
      'refreshToken': ?refreshToken == null ? null : refreshToken!.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GoogleBigQueryV2LinkedService.fromMap(Map<String, dynamic> map) {
    return GoogleBigQueryV2LinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      keyFileContent: map['keyFileContent'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['keyFileContent'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'],
      refreshToken: map['refreshToken'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['refreshToken'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

