// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Google BigQuery service linked service.
class GoogleBigQueryLinkedServiceResponse {
  /// A comma-separated list of public BigQuery projects to access. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? additionalProjects;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
  final pulumi.Input<String> authenticationType;
  /// The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;
  /// The client secret of the google application used to acquire the refresh token.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The service account email ID that is used for ServiceAuthentication and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? email;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The full path to the .p12 key file that is used to authenticate the service account email address and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? keyFilePath;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The default BigQuery project to query against. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> project;
  /// The refresh token obtained from Google for authorizing access to BigQuery for UserAuthentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? refreshToken;
  /// Whether to request access to Google Drive. Allowing Google Drive access enables support for federated tables that combine BigQuery data with data from Google Drive. The default value is false. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestGoogleDriveScope;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'GoogleBigQuery'.
  final pulumi.Input<String> type;
  /// Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useSystemTrustStore;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [GoogleBigQueryLinkedServiceResponse].
  /// [additionalProjects] A comma-separated list of public BigQuery projects to access. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
  /// [clientId] The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret of the google application used to acquire the refresh token.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [email] The service account email ID that is used for ServiceAuthentication and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [keyFilePath] The full path to the .p12 key file that is used to authenticate the service account email address and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [project] The default BigQuery project to query against. Type: string (or Expression with resultType string).
  /// [refreshToken] The refresh token obtained from Google for authorizing access to BigQuery for UserAuthentication.
  /// [requestGoogleDriveScope] Whether to request access to Google Drive. Allowing Google Drive access enables support for federated tables that combine BigQuery data with data from Google Drive. The default value is false. Type: string (or Expression with resultType string).
  /// [trustedCertPath] The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [useSystemTrustStore] Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.Type: boolean (or Expression with resultType boolean).
  /// [version] Version of the linked service.
  GoogleBigQueryLinkedServiceResponse({
    this.additionalProjects,
    this.annotations,
    required this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.email,
    this.encryptedCredential,
    this.keyFilePath,
    this.parameters,
    required this.project,
    this.refreshToken,
    this.requestGoogleDriveScope,
    this.trustedCertPath,
    required this.type,
    this.useSystemTrustStore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProjects': ?additionalProjects,
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'email': ?email,
      'encryptedCredential': ?encryptedCredential,
      'keyFilePath': ?keyFilePath,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': project,
      'refreshToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(refreshToken, (value) => value.toMap()),
      'requestGoogleDriveScope': ?requestGoogleDriveScope,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'version': ?version,
    };
  }

  factory GoogleBigQueryLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleBigQueryLinkedServiceResponse(
      additionalProjects: map['additionalProjects'] == null ? null : (map['additionalProjects']).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']).input(),
      clientSecret: map['clientSecret'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['clientSecret'] as Map).cast<String, dynamic>())).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      email: map['email'] == null ? null : (map['email']).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      keyFilePath: map['keyFilePath'] == null ? null : (map['keyFilePath']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: (map['project']).input(),
      refreshToken: map['refreshToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['refreshToken'] as Map).cast<String, dynamic>())).input(),
      requestGoogleDriveScope: map['requestGoogleDriveScope'] == null ? null : (map['requestGoogleDriveScope']).input(),
      trustedCertPath: map['trustedCertPath'] == null ? null : (map['trustedCertPath']).input(),
      type: (map['type'] as String).input(),
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : (map['useSystemTrustStore']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

