import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_device_check_config_args.dart';

/// An app's DeviceCheck configuration object. Note that the Team ID registered with your
/// app is used as part of the validation process. Make sure your `gcp.firebase.AppleApp` has a team_id present.
///
///
/// To get more information about DeviceCheckConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.deviceCheckConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
///
///
/// ## Example Usage
///
/// ### Firebase App Check Device Check Config Full
///
///
///
///
/// ## Import
///
/// DeviceCheckConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/deviceCheckConfig`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, DeviceCheckConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig default projects/{{project}}/apps/{{app_id}}/deviceCheckConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig default {{app_id}}
/// ```
class AppCheckDeviceCheckConfig extends pulumi.CustomResource {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  late final pulumi.Output<String> appId;

  /// The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  late final pulumi.Output<String> keyId;

  /// The relative resource name of the DeviceCheck configuration object
  late final pulumi.Output<String> name;

  /// The contents of the private key (.p8) file associated with the key specified by keyId.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> privateKey;

  /// Whether the privateKey field was previously set. Since App Check will never return the
  /// privateKey field, this field is the only way to find out whether it was previously set.
  late final pulumi.Output<bool> privateKeySet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> tokenTtl;

  AppCheckDeviceCheckConfig(
    String name, {
    AppCheckDeviceCheckConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.keyId = registerOutput<String>('keyId');
    this.name = registerOutput<String>('name');
    this.privateKey = registerOutput<String>('privateKey');
    this.privateKeySet = registerOutput<bool>('privateKeySet');
    this.project = registerOutput<String>('project');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }
}
