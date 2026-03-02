// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Google AdWords service linked service.
class GoogleAdWordsLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
  final pulumi.Input<String>? authenticationType;
  /// The Client customer ID of the AdWords account that you want to fetch report data for. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientCustomerID;
  /// The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;
  /// The client secret of the google application used to acquire the refresh token.
  final pulumi.Input<AzureKeyVaultSecretReference>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// (Deprecated) Properties used to connect to GoogleAds. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The developer token associated with the manager account that you use to grant access to the AdWords API.
  final pulumi.Input<AzureKeyVaultSecretReference>? developerToken;
  /// The service account email ID that is used for ServiceAuthentication and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? email;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The Google Ads API major version such as v14. The supported major versions could be found on https://developers.google.com/google-ads/api/docs/release-notes. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? googleAdsApiVersion;
  /// (Deprecated) The full path to the .p12 key file that is used to authenticate the service account email address and can only be used on self-hosted IR. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? keyFilePath;
  /// The customer ID of the Google Ads Manager account through which you want to fetch report data of specific Customer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? loginCustomerID;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The private key that is used to authenticate the service account email address and can only be used on self-hosted IR.
  final pulumi.Input<AzureKeyVaultSecretReference>? privateKey;
  /// The refresh token obtained from Google for authorizing access to AdWords for UserAuthentication.
  final pulumi.Input<AzureKeyVaultSecretReference>? refreshToken;
  /// Specifies whether to use the legacy data type mappings, which maps float, int32 and int64 from Google to string. Do not set this to true unless you want to keep backward compatibility with legacy driver's data type mappings. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? supportLegacyDataTypes;
  /// (Deprecated) The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'GoogleAdWords'.
  final pulumi.Input<String> type;
  /// (Deprecated) Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useSystemTrustStore;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [GoogleAdWordsLinkedService].
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
  GoogleAdWordsLinkedService({
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
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'developerToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(developerToken, (value) => value.toMap()),
      'email': ?email,
      'encryptedCredential': ?encryptedCredential,
      'googleAdsApiVersion': ?googleAdsApiVersion,
      'keyFilePath': ?keyFilePath,
      'loginCustomerID': ?loginCustomerID,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(privateKey, (value) => value.toMap()),
      'refreshToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(refreshToken, (value) => value.toMap()),
      'supportLegacyDataTypes': ?supportLegacyDataTypes,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'version': ?version,
    };
  }

  factory GoogleAdWordsLinkedService.fromMap(Map<String, dynamic> map) {
    return GoogleAdWordsLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      clientCustomerID: map['clientCustomerID'] == null ? null : (map['clientCustomerID']).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']).input(),
      clientSecret: map['clientSecret'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>())).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      connectionProperties: map['connectionProperties'] == null ? null : (map['connectionProperties']).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      developerToken: map['developerToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['developerToken'] as Map).cast<String, dynamic>())).input(),
      email: map['email'] == null ? null : (map['email']).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      googleAdsApiVersion: map['googleAdsApiVersion'] == null ? null : (map['googleAdsApiVersion']).input(),
      keyFilePath: map['keyFilePath'] == null ? null : (map['keyFilePath']).input(),
      loginCustomerID: map['loginCustomerID'] == null ? null : (map['loginCustomerID']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateKey: map['privateKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['privateKey'] as Map).cast<String, dynamic>())).input(),
      refreshToken: map['refreshToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['refreshToken'] as Map).cast<String, dynamic>())).input(),
      supportLegacyDataTypes: map['supportLegacyDataTypes'] == null ? null : (map['supportLegacyDataTypes']).input(),
      trustedCertPath: map['trustedCertPath'] == null ? null : (map['trustedCertPath']).input(),
      type: (map['type'] as String).input(),
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : (map['useSystemTrustStore']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

