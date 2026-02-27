// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AndroidApp.
class AndroidAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `AndroidApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.androidApps/getConfig). If `api_key_id` is not set in requests to [`androidApps.Create`](../../rest/v1beta1/projects.androidApps/create), then Firebase automatically associates an `api_key_id` with the `AndroidApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `AndroidApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  final pulumi.Input<String>? apiKeyId;

  /// The user-assigned display name for the `AndroidApp`.
  final pulumi.Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  final pulumi.Input<String>? etag;

  /// The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  final pulumi.Input<String>? name;

  /// Immutable. The canonical package name of the Android app as would appear in the Google Play Developer Console.
  final pulumi.Input<String>? packageName;
  final pulumi.Input<String>? project;

  /// The SHA1 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha1Hashes;

  /// The SHA256 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha256Hashes;

  AndroidAppArgs({
    this.apiKeyId,
    this.displayName,
    this.etag,
    this.name,
    this.packageName,
    this.project,
    this.sha1Hashes,
    this.sha256Hashes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyIdValue = apiKeyId;
    if (apiKeyIdValue != null) {
      map['apiKeyId'] = apiKeyIdValue;
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
    final packageNameValue = packageName;
    if (packageNameValue != null) {
      map['packageName'] = packageNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sha1HashesValue = sha1Hashes;
    if (sha1HashesValue != null) {
      map['sha1Hashes'] = sha1HashesValue;
    }
    final sha256HashesValue = sha256Hashes;
    if (sha256HashesValue != null) {
      map['sha256Hashes'] = sha256HashesValue;
    }
    return map;
  }

  factory AndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return AndroidAppArgs(
      apiKeyId: pulumi.Input.asOptionalInput<String>(map['apiKeyId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      packageName: pulumi.Input.asOptionalInput<String>(map['packageName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sha1Hashes: pulumi.Input.asOptionalInput<List<String>>(map['sha1Hashes']),
      sha256Hashes:
          pulumi.Input.asOptionalInput<List<String>>(map['sha256Hashes']),
    );
  }
}
