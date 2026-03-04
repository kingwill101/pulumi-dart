// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Google BigQuery service linked service.
class GoogleBigQueryV2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The OAuth 2.0 authentication mechanism used for authentication.
  final pulumi.Input<String> authenticationType;

  /// The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;

  /// The client secret of the google application used to acquire the refresh token.
  final pulumi.Input<AzureKeyVaultSecretReference>? clientSecret;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// The content of the .json key file that is used to authenticate the service account. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReference>? keyFileContent;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;

  /// The default BigQuery project id to query against. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> projectId;

  /// The refresh token obtained from Google for authorizing access to BigQuery for UserAuthentication.
  final pulumi.Input<AzureKeyVaultSecretReference>? refreshToken;

  /// Type of linked service.
  /// Expected value is 'GoogleBigQueryV2'.
  final pulumi.Input<String> type;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'clientSecret':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(clientSecret, (value) => value.toMap()),
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReference,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'keyFileContent':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(keyFileContent, (value) => value.toMap()),
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'projectId': projectId,
      'refreshToken':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(refreshToken, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory GoogleBigQueryV2LinkedService.fromMap(Map<String, dynamic> map) {
    return GoogleBigQueryV2LinkedService(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      authenticationType: pulumi.Input.fromValue(
        map['authenticationType'] as String,
      ),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyFileContent: (() {
        final guardedValue = map['keyFileContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecification>(
            guardedValue,
            (value) => ParameterSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      projectId: pulumi.Input.fromValue(map['projectId']),
      refreshToken: (() {
        final guardedValue = map['refreshToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
