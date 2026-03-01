// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Google AdWords service linked service.
class GoogleAdWordsLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
  final String? authenticationType;
  /// The Client customer ID of the AdWords account that you want to fetch report data for. Type: string (or Expression with resultType string).
  final dynamic clientCustomerID;
  /// The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  final dynamic clientId;
  /// The client secret of the google application used to acquire the refresh token.
  final AzureKeyVaultSecretReferenceResponse? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// (Deprecated) Properties used to connect to GoogleAds. It is mutually exclusive with any other properties in the linked service. Type: object.
  final dynamic connectionProperties;
  /// Linked service description.
  final String? description;
  /// The developer token associated with the manager account that you use to grant access to the AdWords API.
  final AzureKeyVaultSecretReferenceResponse? developerToken;
  /// The service account email ID that is used for ServiceAuthentication and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  final dynamic email;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The Google Ads API major version such as v14. The supported major versions could be found on https://developers.google.com/google-ads/api/docs/release-notes. Type: string (or Expression with resultType string).
  final dynamic googleAdsApiVersion;
  /// (Deprecated) The full path to the .p12 key file that is used to authenticate the service account email address and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  final dynamic keyFilePath;
  /// The customer ID of the Google Ads Manager account through which you want to fetch report data of specific Customer. Type: string (or Expression with resultType string).
  final dynamic loginCustomerID;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The private key that is used to authenticate the service account email address and can only be used on self-hosted IR.
  final AzureKeyVaultSecretReferenceResponse? privateKey;
  /// The refresh token obtained from Google for authorizing access to AdWords for UserAuthentication.
  final AzureKeyVaultSecretReferenceResponse? refreshToken;
  /// Specifies whether to use the legacy data type mappings, which maps float, int32 and int64 from Google to string. Do not set this to true unless you want to keep backward compatibility with legacy driver's data type mappings. Type: boolean (or Expression with resultType boolean).
  final dynamic supportLegacyDataTypes;
  /// (Deprecated) The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Type: string (or Expression with resultType string).
  final dynamic trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'GoogleAdWords'.
  final String type;
  /// (Deprecated) Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic useSystemTrustStore;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [GoogleAdWordsLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
  /// [clientCustomerID] The Client customer ID of the AdWords account that you want to fetch report data for. Type: string (or Expression with resultType string).
  /// [clientId] The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret of the google application used to acquire the refresh token.
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] (Deprecated) Properties used to connect to GoogleAds. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [description] Linked service description.
  /// [developerToken] The developer token associated with the manager account that you use to grant access to the AdWords API.
  /// [email] The service account email ID that is used for ServiceAuthentication and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [googleAdsApiVersion] The Google Ads API major version such as v14. The supported major versions could be found on https://developers.google.com/google-ads/api/docs/release-notes. Type: string (or Expression with resultType string).
  /// [keyFilePath] (Deprecated) The full path to the .p12 key file that is used to authenticate the service account email address and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  /// [loginCustomerID] The customer ID of the Google Ads Manager account through which you want to fetch report data of specific Customer. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [privateKey] The private key that is used to authenticate the service account email address and can only be used on self-hosted IR.
  /// [refreshToken] The refresh token obtained from Google for authorizing access to AdWords for UserAuthentication.
  /// [supportLegacyDataTypes] Specifies whether to use the legacy data type mappings, which maps float, int32 and int64 from Google to string. Do not set this to true unless you want to keep backward compatibility with legacy driver's data type mappings. Type: boolean (or Expression with resultType boolean).
  /// [trustedCertPath] (Deprecated) The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [useSystemTrustStore] (Deprecated) Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [version] Version of the linked service.
  GoogleAdWordsLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.clientCustomerID,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.connectionProperties,
    this.description,
    this.developerToken,
    this.email,
    this.encryptedCredential,
    this.googleAdsApiVersion,
    this.keyFilePath,
    this.loginCustomerID,
    this.parameters,
    this.privateKey,
    this.refreshToken,
    this.supportLegacyDataTypes,
    this.trustedCertPath,
    required this.type,
    this.useSystemTrustStore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'clientCustomerID': ?clientCustomerID,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'developerToken': ?developerToken == null ? null : developerToken!.toMap(),
      'email': ?email,
      'encryptedCredential': ?encryptedCredential,
      'googleAdsApiVersion': ?googleAdsApiVersion,
      'keyFilePath': ?keyFilePath,
      'loginCustomerID': ?loginCustomerID,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'privateKey': ?privateKey == null ? null : privateKey!.toMap(),
      'refreshToken': ?refreshToken == null ? null : refreshToken!.toMap(),
      'supportLegacyDataTypes': ?supportLegacyDataTypes,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'version': ?version,
    };
  }

  factory GoogleAdWordsLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleAdWordsLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      clientCustomerID: map['clientCustomerID'] == null ? null : map['clientCustomerID'],
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionProperties: map['connectionProperties'] == null ? null : map['connectionProperties'],
      description: map['description'] == null ? null : map['description'] as String,
      developerToken: map['developerToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['developerToken'] as Map).cast<String, dynamic>()),
      email: map['email'] == null ? null : map['email'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      googleAdsApiVersion: map['googleAdsApiVersion'] == null ? null : map['googleAdsApiVersion'],
      keyFilePath: map['keyFilePath'] == null ? null : map['keyFilePath'],
      loginCustomerID: map['loginCustomerID'] == null ? null : map['loginCustomerID'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateKey: map['privateKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      refreshToken: map['refreshToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['refreshToken'] as Map).cast<String, dynamic>()),
      supportLegacyDataTypes: map['supportLegacyDataTypes'] == null ? null : map['supportLegacyDataTypes'],
      trustedCertPath: map['trustedCertPath'] == null ? null : map['trustedCertPath'],
      type: map['type'] as String,
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : map['useSystemTrustStore'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

