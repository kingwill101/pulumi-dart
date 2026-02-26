import 'package:pulumi/pulumi.dart';
import 'google_cloud_recaptchaenterprise_v1_android_key_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options_response.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings_response.dart';
import 'key_args3.dart';

/// Creates a new reCAPTCHA Enterprise key.
class Key3 extends CustomResource {
  /// Settings for keys that can be used by Android apps.
  late final Output<GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse>
      androidSettings;

  /// The timestamp corresponding to the creation of this key.
  late final Output<String> createTime;

  /// Human-readable display name of this key. Modifiable by user.
  late final Output<String> displayName;

  /// Settings for keys that can be used by iOS apps.
  late final Output<GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse>
      iosSettings;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  late final Output<Map<String, String>> labels;

  /// Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Options for user acceptance testing.
  late final Output<GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse>
      testingOptions;

  /// Optional. Settings for WAF
  late final Output<GoogleCloudRecaptchaenterpriseV1WafSettingsResponse>
      wafSettings;

  /// Settings for keys that can be used by websites.
  late final Output<GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse>
      webSettings;

  Key3(
    String name, {
    KeyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:recaptchaenterprise/v1:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.androidSettings = registerOutput<
            GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse>(
        'androidSettings');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.iosSettings =
        registerOutput<GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse>(
            'iosSettings');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.testingOptions =
        registerOutput<GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse>(
            'testingOptions');
    this.wafSettings =
        registerOutput<GoogleCloudRecaptchaenterpriseV1WafSettingsResponse>(
            'wafSettings');
    this.webSettings =
        registerOutput<GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse>(
            'webSettings');
  }
}
