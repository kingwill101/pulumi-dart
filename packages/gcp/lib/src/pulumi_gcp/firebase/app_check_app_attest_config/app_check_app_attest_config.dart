import 'package:pulumi/pulumi.dart';
import 'app_check_app_attest_config_args.dart';

/// An app's App Attest configuration object. Note that the Team ID registered with your
/// app is used as part of the validation process. Make sure your `gcp.firebase.AppleApp` has a team_id present.
///
///
/// To get more information about AppAttestConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.appAttestConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check App Attest Config Minimal
///
///
///
/// ### Firebase App Check App Attest Config Full
///
///
///
///
/// ## Import
///
/// AppAttestConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/appAttestConfig`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, AppAttestConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig default projects/{{project}}/apps/{{app_id}}/appAttestConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig default {{app_id}}
/// ```
class AppCheckAppAttestConfig extends CustomResource {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  late final Output<String> appId;

  /// The relative resource name of the App Attest configuration object
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String> tokenTtl;

  AppCheckAppAttestConfig(
    String name, {
    AppCheckAppAttestConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }
}
