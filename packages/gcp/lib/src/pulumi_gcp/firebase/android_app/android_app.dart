import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_app_args.dart';

/// A Google Cloud Firebase Android application instance
///
/// To get more information about AndroidApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/android/setup)
///
/// ## Example Usage
///
/// ### Firebase Android App Basic
///
///
///
/// ### Firebase Android App Custom Api Key
///
///
///
///
/// ## Import
///
/// AndroidApp can be imported using any of these accepted formats:
///
/// * `{{project}} projects/{{project}}/androidApps/{{app_id}}`
///
/// * `projects/{{project}}/androidApps/{{app_id}}`
///
/// * `{{project}}/{{project}}/{{app_id}}`
///
/// * `androidApps/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, AndroidApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default "{{project}} projects/{{project}}/androidApps/{{app_id}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default projects/{{project}}/androidApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default {{project}}/{{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default androidApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default {{app_id}}
/// ```
class AndroidApp extends pulumi.CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  late final pulumi.Output<String> apiKeyId;

  /// The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  late final pulumi.Output<String> appId;
  late final pulumi.Output<String?> deletionPolicy;

  /// The user-assigned display name of the AndroidApp.
  late final pulumi.Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and it may be sent
  /// with update requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The fully qualified resource name of the AndroidApp, for example:
  /// projects/projectId/androidApps/appId
  late final pulumi.Output<String> name;

  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  late final pulumi.Output<String> packageName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The SHA1 certificate hashes for the AndroidApp.
  late final pulumi.Output<List<String>?> sha1Hashes;

  /// The SHA256 certificate hashes for the AndroidApp.
  late final pulumi.Output<List<String>?> sha256Hashes;

  AndroidApp(
    String name, {
    AndroidAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/androidApp:AndroidApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKeyId = registerOutput<String>('apiKeyId');
    this.appId = registerOutput<String>('appId');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.packageName = registerOutput<String>('packageName');
    this.project = registerOutput<String>('project');
    this.sha1Hashes = registerOutput<List<String>?>('sha1Hashes');
    this.sha256Hashes = registerOutput<List<String>?>('sha256Hashes');
  }
}
