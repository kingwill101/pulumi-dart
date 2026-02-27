import 'package:pulumi/pulumi.dart';
import 'apple_app_args.dart';

/// A Google Cloud Firebase Apple application instance
///
/// To get more information about AppleApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/ios/setup)
///
/// ## Example Usage
///
/// ### Firebase Apple App Basic
///
///
///
/// ### Firebase Apple App Full
///
///
///
///
/// ## Import
///
/// AppleApp can be imported using any of these accepted formats:
///
/// * `{{project}} projects/{{project}}/iosApps/{{app_id}}`
///
/// * `projects/{{project}}/iosApps/{{app_id}}`
///
/// * `{{project}}/{{project}}/{{app_id}}`
///
/// * `iosApps/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, AppleApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default "{{project}} projects/{{project}}/iosApps/{{app_id}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default projects/{{project}}/iosApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default {{project}}/{{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default iosApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default {{app_id}}
/// ```
class AppleApp extends CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AppleApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  late final Output<String> apiKeyId;

  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  late final Output<String> appId;

  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  late final Output<String?> appStoreId;

  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  late final Output<String> bundleId;
  late final Output<String?> deletionPolicy;

  /// The user-assigned display name of the App.
  late final Output<String> displayName;

  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/iosApps/appId
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Apple Developer Team ID associated with the App in the App Store.
  late final Output<String?> teamId;

  AppleApp(
    String name, {
    AppleAppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appleApp:AppleApp',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKeyId = registerOutput<String>('apiKeyId');
    this.appId = registerOutput<String>('appId');
    this.appStoreId = registerOutput<String?>('appStoreId');
    this.bundleId = registerOutput<String>('bundleId');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.teamId = registerOutput<String?>('teamId');
  }
}
