// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Result data returned by getDeveloperApp.
class GetDeveloperAppResult {
  /// List of API products associated with the developer app.
  final List<String> apiProducts;

  /// Developer app family.
  final String appFamily;

  /// ID of the developer app.
  final String appId;

  /// List of attributes for the developer app.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  final String callbackUrl;

  /// Time the developer app was created in milliseconds since epoch.
  final String createdAt;

  /// Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.
  final List<GoogleCloudApigeeV1CredentialResponse> credentials;

  /// ID of the developer.
  final String developerId;

  /// Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final String keyExpiresIn;

  /// Time the developer app was modified in milliseconds since epoch.
  final String lastModifiedAt;

  /// Name of the developer app.
  final String name;

  /// Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  final List<String> scopes;

  /// Status of the credential. Valid values include `approved` or `revoked`.
  final String status;

  /// Creates a new [GetDeveloperAppResult].
  /// [apiProducts] List of API products associated with the developer app.
  /// [appFamily] Developer app family.
  /// [appId] ID of the developer app.
  /// [attributes] List of attributes for the developer app.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  /// [createdAt] Time the developer app was created in milliseconds since epoch.
  /// [credentials] Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.
  /// [developerId] ID of the developer.
  /// [keyExpiresIn] Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [lastModifiedAt] Time the developer app was modified in milliseconds since epoch.
  /// [name] Name of the developer app.
  /// [scopes] Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  /// [status] Status of the credential. Valid values include `approved` or `revoked`.
  GetDeveloperAppResult({
    required this.apiProducts,
    required this.appFamily,
    required this.appId,
    required this.attributes,
    required this.callbackUrl,
    required this.createdAt,
    required this.credentials,
    required this.developerId,
    required this.keyExpiresIn,
    required this.lastModifiedAt,
    required this.name,
    required this.scopes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiProducts'] = apiProducts;
    map['appFamily'] = appFamily;
    map['appId'] = appId;
    map['attributes'] = pulumi.Input.encodeList<
        GoogleCloudApigeeV1AttributeResponse,
        Map<String, dynamic>>(attributes, (value) => value.toMap());
    map['callbackUrl'] = callbackUrl;
    map['createdAt'] = createdAt;
    map['credentials'] = pulumi.Input.encodeList<
        GoogleCloudApigeeV1CredentialResponse,
        Map<String, dynamic>>(credentials, (value) => value.toMap());
    map['developerId'] = developerId;
    map['keyExpiresIn'] = keyExpiresIn;
    map['lastModifiedAt'] = lastModifiedAt;
    map['name'] = name;
    map['scopes'] = scopes;
    map['status'] = status;
    return map;
  }

  factory GetDeveloperAppResult.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppResult(
      apiProducts: (map['apiProducts'] as List).cast<String>(),
      appFamily: map['appFamily'] as String,
      appId: map['appId'] as String,
      attributes: pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(
          map['attributes'],
          (value) => GoogleCloudApigeeV1AttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      callbackUrl: map['callbackUrl'] as String,
      createdAt: map['createdAt'] as String,
      credentials:
          pulumi.Input.decodeList<GoogleCloudApigeeV1CredentialResponse>(
              map['credentials'],
              (value) => GoogleCloudApigeeV1CredentialResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      developerId: map['developerId'] as String,
      keyExpiresIn: map['keyExpiresIn'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}
