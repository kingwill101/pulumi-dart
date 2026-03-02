// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// QuickBooks server linked service. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class QuickBooksLinkedServiceResponse {
  /// The access token for OAuth 2.0 authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? accessToken;
  /// The access token secret is deprecated for OAuth 1.0 authentication. Only used for version 1.0.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? accessTokenSecret;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The company ID of the QuickBooks company to authorize.
  final pulumi.Input<dynamic>? companyId;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Properties used to connect to QuickBooks. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;
  /// The consumer key for OAuth 2.0 authentication.
  final pulumi.Input<dynamic>? consumerKey;
  /// The consumer secret for OAuth 2.0 authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? consumerSecret;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The endpoint of the QuickBooks server. (i.e. quickbooks.api.intuit.com)
  final pulumi.Input<dynamic>? endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The refresh token for OAuth 2.0 authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? refreshToken;
  /// Type of linked service.
  /// Expected value is 'QuickBooks'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Only used for version 1.0.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [QuickBooksLinkedServiceResponse].
  /// [accessToken] The access token for OAuth 2.0 authentication.
  /// [accessTokenSecret] The access token secret is deprecated for OAuth 1.0 authentication. Only used for version 1.0.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [companyId] The company ID of the QuickBooks company to authorize.
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] Properties used to connect to QuickBooks. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [consumerKey] The consumer key for OAuth 2.0 authentication.
  /// [consumerSecret] The consumer secret for OAuth 2.0 authentication.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the QuickBooks server. (i.e. quickbooks.api.intuit.com)
  /// [parameters] Parameters for linked service.
  /// [refreshToken] The refresh token for OAuth 2.0 authentication.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Only used for version 1.0.
  /// [version] Version of the linked service.
  QuickBooksLinkedServiceResponse({
    this.accessToken,
    this.accessTokenSecret,
    this.annotations,
    this.companyId,
    this.connectVia,
    this.connectionProperties,
    this.consumerKey,
    this.consumerSecret,
    this.description,
    this.encryptedCredential,
    this.endpoint,
    this.parameters,
    this.refreshToken,
    required this.type,
    this.useEncryptedEndpoints,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'accessTokenSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(accessTokenSecret, (value) => value.toMap()),
      'annotations': ?annotations,
      'companyId': ?companyId,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'consumerKey': ?consumerKey,
      'consumerSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(consumerSecret, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': ?endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(refreshToken, (value) => value.toMap()),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'version': ?version,
    };
  }

  factory QuickBooksLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return QuickBooksLinkedServiceResponse(
      accessToken: map['accessToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['accessToken'] as Map).cast<String, dynamic>())).input(),
      accessTokenSecret: map['accessTokenSecret'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['accessTokenSecret'] as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      companyId: map['companyId'] == null ? null : (map['companyId']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      connectionProperties: map['connectionProperties'] == null ? null : (map['connectionProperties']).input(),
      consumerKey: map['consumerKey'] == null ? null : (map['consumerKey']).input(),
      consumerSecret: map['consumerSecret'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['consumerSecret'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      refreshToken: map['refreshToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['refreshToken'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : (map['useEncryptedEndpoints']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

