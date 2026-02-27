// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for IosApp.
class IosAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `IosApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.iosApps/getConfig). If `api_key_id` is not set in requests to [`iosApps.Create`](../../rest/v1beta1/projects.iosApps/create), then Firebase automatically associates an `api_key_id` with the `IosApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `IosApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  final Input<String>? apiKeyId;

  /// The automatically generated Apple ID assigned to the iOS app by Apple in the iOS App Store.
  final Input<String>? appStoreId;

  /// Immutable. The canonical bundle ID of the iOS app as it would appear in the iOS AppStore.
  final Input<String>? bundleId;

  /// The user-assigned display name for the `IosApp`.
  final Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  final Input<String>? etag;

  /// The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.iosApps#IosApp.FIELDS.app_id)).
  final Input<String>? name;
  final Input<String>? project;

  /// The Apple Developer Team ID associated with the App in the App Store.
  final Input<String>? teamId;

  IosAppArgs({
    this.apiKeyId,
    this.appStoreId,
    this.bundleId,
    this.displayName,
    this.etag,
    this.name,
    this.project,
    this.teamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyIdValue = apiKeyId;
    if (apiKeyIdValue != null) {
      map['apiKeyId'] = apiKeyIdValue;
    }
    final appStoreIdValue = appStoreId;
    if (appStoreIdValue != null) {
      map['appStoreId'] = appStoreIdValue;
    }
    final bundleIdValue = bundleId;
    if (bundleIdValue != null) {
      map['bundleId'] = bundleIdValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final teamIdValue = teamId;
    if (teamIdValue != null) {
      map['teamId'] = teamIdValue;
    }
    return map;
  }

  factory IosAppArgs.fromMap(Map<String, dynamic> map) {
    return IosAppArgs(
      apiKeyId: Input.asOptionalInput<String>(map['apiKeyId']),
      appStoreId: Input.asOptionalInput<String>(map['appStoreId']),
      bundleId: Input.asOptionalInput<String>(map['bundleId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      teamId: Input.asOptionalInput<String>(map['teamId']),
    );
  }
}
