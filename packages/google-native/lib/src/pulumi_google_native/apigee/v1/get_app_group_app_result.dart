// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Result data returned by getAppGroupApp.
class GetAppGroupAppResult {
  /// List of API products associated with the AppGroup app.
  final List<String> apiProducts;

  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  final String appGroup;

  /// Immutable. ID of the AppGroup app.
  final String appId;

  /// List of attributes for the AppGroup app.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  final String callbackUrl;

  /// Time the AppGroup app was created in milliseconds since epoch.
  final String createdAt;

  /// Set of credentials for the AppGroup app consisting of the consumer key/secret pairs associated with the API products.
  final List<GoogleCloudApigeeV1CredentialResponse> credentials;

  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final String keyExpiresIn;

  /// Time the AppGroup app was modified in milliseconds since epoch.
  final String lastModifiedAt;

  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  final String name;

  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  final List<String> scopes;

  /// Status of the App. Valid values include `approved` or `revoked`.
  final String status;

  GetAppGroupAppResult({
    required this.apiProducts,
    required this.appGroup,
    required this.appId,
    required this.attributes,
    required this.callbackUrl,
    required this.createdAt,
    required this.credentials,
    required this.keyExpiresIn,
    required this.lastModifiedAt,
    required this.name,
    required this.scopes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiProducts'] = apiProducts;
    map['appGroup'] = appGroup;
    map['appId'] = appId;
    map['attributes'] = Input.encodeList<GoogleCloudApigeeV1AttributeResponse,
        Map<String, dynamic>>(attributes, (value) => value.toMap());
    map['callbackUrl'] = callbackUrl;
    map['createdAt'] = createdAt;
    map['credentials'] = Input.encodeList<GoogleCloudApigeeV1CredentialResponse,
        Map<String, dynamic>>(credentials, (value) => value.toMap());
    map['keyExpiresIn'] = keyExpiresIn;
    map['lastModifiedAt'] = lastModifiedAt;
    map['name'] = name;
    map['scopes'] = scopes;
    map['status'] = status;
    return map;
  }

  factory GetAppGroupAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppResult(
      apiProducts: (map['apiProducts'] as List).cast<String>(),
      appGroup: map['appGroup'] as String,
      appId: map['appId'] as String,
      attributes: Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(
          map['attributes'],
          (value) => GoogleCloudApigeeV1AttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      callbackUrl: map['callbackUrl'] as String,
      createdAt: map['createdAt'] as String,
      credentials: Input.decodeList<GoogleCloudApigeeV1CredentialResponse>(
          map['credentials'],
          (value) => GoogleCloudApigeeV1CredentialResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      keyExpiresIn: map['keyExpiresIn'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}
