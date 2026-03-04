// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Google AdWords service linked service.
class GoogleAdWordsLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The OAuth 2.0 authentication mechanism used for authentication. ServiceAuthentication can only be used on self-hosted IR.
  final pulumi.Input<String>? authenticationType;

  /// The Client customer ID of the AdWords account that you want to fetch report data for. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientCustomerID;

  /// The client id of the google application used to acquire the refresh token. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;

  /// The client secret of the google application used to acquire the refresh token.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? clientSecret;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// (Deprecated) Properties used to connect to GoogleAds. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The developer token associated with the manager account that you use to grant access to the AdWords API.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? developerToken;

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
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The private key that is used to authenticate the service account email address and can only be used on self-hosted IR.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? privateKey;

  /// The refresh token obtained from Google for authorizing access to AdWords for UserAuthentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? refreshToken;

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
      'clientSecret':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(clientSecret, (value) => value.toMap()),
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'developerToken':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(developerToken, (value) => value.toMap()),
      'email': ?email,
      'encryptedCredential': ?encryptedCredential,
      'googleAdsApiVersion': ?googleAdsApiVersion,
      'keyFilePath': ?keyFilePath,
      'loginCustomerID': ?loginCustomerID,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privateKey':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(privateKey, (value) => value.toMap()),
      'refreshToken':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(refreshToken, (value) => value.toMap()),
      'supportLegacyDataTypes': ?supportLegacyDataTypes,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'version': ?version,
    };
  }

  factory GoogleAdWordsLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleAdWordsLinkedServiceResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCustomerID: (() {
        final guardedValue = map['clientCustomerID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionProperties: (() {
        final guardedValue = map['connectionProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      developerToken: (() {
        final guardedValue = map['developerToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      googleAdsApiVersion: (() {
        final guardedValue = map['googleAdsApiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      keyFilePath: (() {
        final guardedValue = map['keyFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      loginCustomerID: (() {
        final guardedValue = map['loginCustomerID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      refreshToken: (() {
        final guardedValue = map['refreshToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      supportLegacyDataTypes: (() {
        final guardedValue = map['supportLegacyDataTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      trustedCertPath: (() {
        final guardedValue = map['trustedCertPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useSystemTrustStore: (() {
        final guardedValue = map['useSystemTrustStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
