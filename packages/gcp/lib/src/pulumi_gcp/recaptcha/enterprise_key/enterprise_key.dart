import 'package:pulumi/pulumi.dart';
import '../enterprise_key_android_settings/enterprise_key_android_settings.dart';
import '../enterprise_key_ios_settings/enterprise_key_ios_settings.dart';
import '../enterprise_key_testing_options/enterprise_key_testing_options.dart';
import '../enterprise_key_waf_settings/enterprise_key_waf_settings.dart';
import '../enterprise_key_web_settings/enterprise_key_web_settings.dart';
import 'enterprise_key_args.dart';

/// The RecaptchaEnterprise Key resource
///
/// ## Example Usage
///
/// ### Android_key
/// A basic test of recaptcha enterprise key that can be used by Android apps
///
/// ### Ios_key
/// A basic test of recaptcha enterprise key that can be used by iOS apps
///
/// ### Minimal_key
/// A minimal test of recaptcha enterprise key
///
/// ### Waf_key
/// A basic test of recaptcha enterprise key that includes WAF settings
///
/// ### Web_key
/// A basic test of recaptcha enterprise key that can be used by websites
///
/// ### Web_score_key
/// A basic test of recaptcha enterprise key with score integration type that can be used by websites
///
///
/// ## Import
///
/// Key can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/keys/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Key can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default projects/{{project}}/keys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default {{name}}
/// ```
class EnterpriseKey extends CustomResource {
  /// Settings for keys that can be used by Android apps.
  late final Output<EnterpriseKeyAndroidSettings?> androidSettings;

  /// The timestamp corresponding to the creation of this Key.
  late final Output<String> createTime;

  /// Human-readable display name of this key. Modifiable by user.
  ///
  ///
  ///
  /// - - -
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Settings for keys that can be used by iOS apps.
  late final Output<EnterpriseKeyIosSettings?> iosSettings;

  /// See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource id for the Key, which is the same as the Site Key itself.
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Options for user acceptance testing.
  late final Output<EnterpriseKeyTestingOptions?> testingOptions;

  /// Settings specific to keys that can be used for WAF (Web Application Firewall).
  late final Output<EnterpriseKeyWafSettings?> wafSettings;

  /// Settings for keys that can be used by websites.
  late final Output<EnterpriseKeyWebSettings?> webSettings;

  EnterpriseKey(
    String name, {
    EnterpriseKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:recaptcha/enterpriseKey:EnterpriseKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.androidSettings =
        registerOutput<EnterpriseKeyAndroidSettings?>('androidSettings');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.iosSettings = registerOutput<EnterpriseKeyIosSettings?>('iosSettings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.testingOptions =
        registerOutput<EnterpriseKeyTestingOptions?>('testingOptions');
    this.wafSettings = registerOutput<EnterpriseKeyWafSettings?>('wafSettings');
    this.webSettings = registerOutput<EnterpriseKeyWebSettings?>('webSettings');
  }
}
