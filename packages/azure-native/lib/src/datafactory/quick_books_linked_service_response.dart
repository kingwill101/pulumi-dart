// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// QuickBooks server linked service. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class QuickBooksLinkedServiceResponse {
  /// The access token for OAuth 2.0 authentication.
  final AzureKeyVaultSecretReferenceResponse? accessToken;
  /// The access token secret is deprecated for OAuth 1.0 authentication. Only used for version 1.0.
  final AzureKeyVaultSecretReferenceResponse? accessTokenSecret;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The company ID of the QuickBooks company to authorize.
  final dynamic companyId;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Properties used to connect to QuickBooks. It is mutually exclusive with any other properties in the linked service. Type: object.
  final dynamic connectionProperties;
  /// The consumer key for OAuth 2.0 authentication.
  final dynamic consumerKey;
  /// The consumer secret for OAuth 2.0 authentication.
  final AzureKeyVaultSecretReferenceResponse? consumerSecret;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The endpoint of the QuickBooks server. (i.e. quickbooks.api.intuit.com)
  final dynamic endpoint;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The refresh token for OAuth 2.0 authentication.
  final AzureKeyVaultSecretReferenceResponse? refreshToken;
  /// Type of linked service.
  /// Expected value is 'QuickBooks'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Only used for version 1.0.
  final dynamic useEncryptedEndpoints;
  /// Version of the linked service.
  final String? version;

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
      'accessToken': ?accessToken == null ? null : accessToken!.toMap(),
      'accessTokenSecret': ?accessTokenSecret == null ? null : accessTokenSecret!.toMap(),
      'annotations': ?annotations,
      'companyId': ?companyId,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionProperties': ?connectionProperties,
      'consumerKey': ?consumerKey,
      'consumerSecret': ?consumerSecret == null ? null : consumerSecret!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': ?endpoint,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'refreshToken': ?refreshToken == null ? null : refreshToken!.toMap(),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'version': ?version,
    };
  }

  factory QuickBooksLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return QuickBooksLinkedServiceResponse(
      accessToken: map['accessToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['accessToken'] as Map).cast<String, dynamic>()),
      accessTokenSecret: map['accessTokenSecret'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['accessTokenSecret'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      companyId: map['companyId'] == null ? null : map['companyId'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionProperties: map['connectionProperties'] == null ? null : map['connectionProperties'],
      consumerKey: map['consumerKey'] == null ? null : map['consumerKey'],
      consumerSecret: map['consumerSecret'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['consumerSecret'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      refreshToken: map['refreshToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['refreshToken'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

