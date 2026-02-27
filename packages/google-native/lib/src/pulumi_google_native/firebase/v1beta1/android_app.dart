import 'package:pulumi/pulumi.dart' hide Config;
import 'android_app_args.dart';

/// Requests the creation of a new AndroidApp in the specified FirebaseProject. The result of this call is an `Operation` which can be used to track the provisioning process. The `Operation` is automatically deleted after completion, so there is no need to call `DeleteOperation`.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class AndroidApp extends CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `AndroidApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.androidApps/getConfig). If `api_key_id` is not set in requests to [`androidApps.Create`](../../rest/v1beta1/projects.androidApps/create), then Firebase automatically associates an `api_key_id` with the `AndroidApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `AndroidApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  late final Output<String> apiKeyId;

  /// Immutable. The globally unique, Firebase-assigned identifier for the `AndroidApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  late final Output<String> appId;

  /// The user-assigned display name for the `AndroidApp`.
  late final Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  late final Output<String> etag;

  /// Timestamp of when the App will be considered expired and cannot be undeleted. This value is only provided if the App is in the `DELETED` state.
  late final Output<String> expireTime;

  /// The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  late final Output<String> name;

  /// Immutable. The canonical package name of the Android app as would appear in the Google Play Developer Console.
  late final Output<String> packageName;
  late final Output<String> project;

  /// The SHA1 certificate hashes for the AndroidApp.
  late final Output<List<String>> sha1Hashes;

  /// The SHA256 certificate hashes for the AndroidApp.
  late final Output<List<String>> sha256Hashes;

  /// The lifecycle state of the App.
  late final Output<String> state;

  AndroidApp(
    String name, {
    AndroidAppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebase/v1beta1:AndroidApp',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKeyId = registerOutput<String>('apiKeyId');
    this.appId = registerOutput<String>('appId');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.name = registerOutput<String>('name');
    this.packageName = registerOutput<String>('packageName');
    this.project = registerOutput<String>('project');
    this.sha1Hashes = registerOutput<List<String>>('sha1Hashes');
    this.sha256Hashes = registerOutput<List<String>>('sha256Hashes');
    this.state = registerOutput<String>('state');
  }
}
