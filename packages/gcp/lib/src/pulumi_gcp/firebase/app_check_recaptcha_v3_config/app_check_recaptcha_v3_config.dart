import 'package:pulumi/pulumi.dart';
import 'app_check_recaptcha_v3_config_args.dart';

/// An app's reCAPTCHA V3 configuration object.
///
///
/// To get more information about RecaptchaV3Config, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.recaptchaV3Config)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
///
///
/// ## Example Usage
///
/// ### Firebase App Check Recaptcha V3 Config Basic
///
///
///
///
/// ## Import
///
/// RecaptchaV3Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/recaptchaV3Config`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, RecaptchaV3Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config default projects/{{project}}/apps/{{app_id}}/recaptchaV3Config
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config default {{app_id}}
/// ```
class AppCheckRecaptchaV3Config extends CustomResource {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  late final Output<String> appId;

  /// The relative resource name of the reCAPTCHA V3 configuration object
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The site secret used to identify your service for reCAPTCHA v3 verification.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> siteSecret;

  /// Whether the siteSecret was previously set. Since we will never return the siteSecret field, this field is the only way to find out whether it was previously set.
  late final Output<bool> siteSecretSet;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String> tokenTtl;

  AppCheckRecaptchaV3Config(
    String name, {
    AppCheckRecaptchaV3ConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.siteSecret = registerOutput<String>('siteSecret');
    this.siteSecretSet = registerOutput<bool>('siteSecretSet');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }
}
