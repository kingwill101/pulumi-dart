// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// QuickBooks server linked service. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class QuickBooksLinkedService {
  /// The access token for OAuth 2.0 authentication.
  final pulumi.Input<AzureKeyVaultSecretReference>? accessToken;
  /// The access token secret is deprecated for OAuth 1.0 authentication. Only used for version 1.0.
  final pulumi.Input<AzureKeyVaultSecretReference>? accessTokenSecret;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The company ID of the QuickBooks company to authorize.
  final pulumi.Input<dynamic>? companyId;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Properties used to connect to QuickBooks. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;
  /// The consumer key for OAuth 2.0 authentication.
  final pulumi.Input<dynamic>? consumerKey;
  /// The consumer secret for OAuth 2.0 authentication.
  final pulumi.Input<AzureKeyVaultSecretReference>? consumerSecret;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The endpoint of the QuickBooks server. (i.e. quickbooks.api.intuit.com)
  final pulumi.Input<dynamic>? endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The refresh token for OAuth 2.0 authentication.
  final pulumi.Input<AzureKeyVaultSecretReference>? refreshToken;
  /// Type of linked service.
  /// Expected value is 'QuickBooks'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Only used for version 1.0.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [QuickBooksLinkedService].
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
  QuickBooksLinkedService({
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
      'accessToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'accessTokenSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(accessTokenSecret, (value) => value.toMap()),
      'annotations': ?annotations,
      'companyId': ?companyId,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'consumerKey': ?consumerKey,
      'consumerSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(consumerSecret, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': ?endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(refreshToken, (value) => value.toMap()),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'version': ?version,
    };
  }

  factory QuickBooksLinkedService.fromMap(Map<String, dynamic> map) {
    return QuickBooksLinkedService(
      accessToken: map['accessToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['accessToken']! as Map).cast<String, dynamic>())).input(),
      accessTokenSecret: map['accessTokenSecret'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['accessTokenSecret']! as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      companyId: map['companyId'] == null ? null : (map['companyId']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionProperties: map['connectionProperties'] == null ? null : (map['connectionProperties']!).input(),
      consumerKey: map['consumerKey'] == null ? null : (map['consumerKey']!).input(),
      consumerSecret: map['consumerSecret'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['consumerSecret']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      refreshToken: map['refreshToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['refreshToken']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : (map['useEncryptedEndpoints']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

