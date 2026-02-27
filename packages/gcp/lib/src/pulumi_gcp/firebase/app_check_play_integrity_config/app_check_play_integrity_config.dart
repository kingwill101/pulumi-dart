import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_play_integrity_config_args.dart';

/// An app's Play Integrity configuration object. Note that your registered SHA-256 certificate fingerprints are used to validate tokens issued by the Play Integrity API.
/// Make sure your `gcp.firebase.AndroidApp` has at least one `sha256_hashes` present.
///
///
/// To get more information about PlayIntegrityConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.playIntegrityConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check Play Integrity Config Minimal
///
///
///
/// ### Firebase App Check Play Integrity Config Full
///
///
///
///
/// ## Import
///
/// PlayIntegrityConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/playIntegrityConfig`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, PlayIntegrityConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig default projects/{{project}}/apps/{{app_id}}/playIntegrityConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig default {{app_id}}
/// ```
class AppCheckPlayIntegrityConfig extends pulumi.CustomResource {
  /// The ID of an
  /// [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id).
  late final pulumi.Output<String> appId;

  /// The relative resource name of the Play Integrity configuration object
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> tokenTtl;

  AppCheckPlayIntegrityConfig(
    String name, {
    AppCheckPlayIntegrityConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }
}
