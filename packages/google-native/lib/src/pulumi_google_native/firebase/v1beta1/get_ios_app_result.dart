// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIosApp.
class GetIosAppResult {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `IosApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.iosApps/getConfig). If `api_key_id` is not set in requests to [`iosApps.Create`](../../rest/v1beta1/projects.iosApps/create), then Firebase automatically associates an `api_key_id` with the `IosApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `IosApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  final String apiKeyId;

  /// Immutable. The globally unique, Firebase-assigned identifier for the `IosApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  final String appId;

  /// The automatically generated Apple ID assigned to the iOS app by Apple in the iOS App Store.
  final String appStoreId;

  /// Immutable. The canonical bundle ID of the iOS app as it would appear in the iOS AppStore.
  final String bundleId;

  /// The user-assigned display name for the `IosApp`.
  final String displayName;

  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  final String etag;

  /// Timestamp of when the App will be considered expired and cannot be undeleted. This value is only provided if the App is in the `DELETED` state.
  final String expireTime;

  /// The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.iosApps#IosApp.FIELDS.app_id)).
  final String name;

  /// Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `IosApp`.
  final String project;

  /// The lifecycle state of the App.
  final String state;

  /// The Apple Developer Team ID associated with the App in the App Store.
  final String teamId;

  GetIosAppResult({
    required this.apiKeyId,
    required this.appId,
    required this.appStoreId,
    required this.bundleId,
    required this.displayName,
    required this.etag,
    required this.expireTime,
    required this.name,
    required this.project,
    required this.state,
    required this.teamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKeyId'] = apiKeyId;
    map['appId'] = appId;
    map['appStoreId'] = appStoreId;
    map['bundleId'] = bundleId;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['expireTime'] = expireTime;
    map['name'] = name;
    map['project'] = project;
    map['state'] = state;
    map['teamId'] = teamId;
    return map;
  }

  factory GetIosAppResult.fromMap(Map<String, dynamic> map) {
    return GetIosAppResult(
      apiKeyId: map['apiKeyId'] as String,
      appId: map['appId'] as String,
      appStoreId: map['appStoreId'] as String,
      bundleId: map['bundleId'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
      teamId: map['teamId'] as String,
    );
  }
}
