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
    this.androidSettings = Output.createUnknown<
        GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.iosSettings = Output.createUnknown<
        GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.testingOptions = Output.createUnknown<
        GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse>();
    this.wafSettings = Output.createUnknown<
        GoogleCloudRecaptchaenterpriseV1WafSettingsResponse>();
    this.webSettings = Output.createUnknown<
        GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse>();
  }
}
