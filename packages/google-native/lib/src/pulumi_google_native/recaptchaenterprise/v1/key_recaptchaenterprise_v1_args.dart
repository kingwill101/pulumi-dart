// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_android_key_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings.dart';

/// The set of arguments for Key.
class KeyRecaptchaenterpriseV1Args {
  /// Settings for keys that can be used by Android apps.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1AndroidKeySettings>?
      androidSettings;

  /// Human-readable display name of this key. Modifiable by user.
  final pulumi.Input<String> displayName;

  /// Settings for keys that can be used by iOS apps.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1IOSKeySettings>?
      iosSettings;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;

  /// Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Options for user acceptance testing.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1TestingOptions>?
      testingOptions;

  /// Optional. Settings for WAF
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1WafSettings>? wafSettings;

  /// Settings for keys that can be used by websites.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1WebKeySettings>?
      webSettings;

  KeyRecaptchaenterpriseV1Args({
    this.androidSettings,
    required this.displayName,
    this.iosSettings,
    this.labels,
    this.name,
    this.project,
    this.testingOptions,
    this.wafSettings,
    this.webSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final androidSettingsValue = androidSettings;
    if (androidSettingsValue != null) {
      map['androidSettings'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1AndroidKeySettings,
          Map<String, dynamic>>(androidSettingsValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final iosSettingsValue = iosSettings;
    if (iosSettingsValue != null) {
      map['iosSettings'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1IOSKeySettings,
          Map<String, dynamic>>(iosSettingsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final testingOptionsValue = testingOptions;
    if (testingOptionsValue != null) {
      map['testingOptions'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1TestingOptions,
          Map<String, dynamic>>(testingOptionsValue, (value) => value.toMap());
    }
    final wafSettingsValue = wafSettings;
    if (wafSettingsValue != null) {
      map['wafSettings'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1WafSettings,
          Map<String, dynamic>>(wafSettingsValue, (value) => value.toMap());
    }
    final webSettingsValue = webSettings;
    if (webSettingsValue != null) {
      map['webSettings'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1WebKeySettings,
          Map<String, dynamic>>(webSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeyRecaptchaenterpriseV1Args.fromMap(Map<String, dynamic> map) {
    return KeyRecaptchaenterpriseV1Args(
      androidSettings: pulumi.Input.asOptionalInput<
              GoogleCloudRecaptchaenterpriseV1AndroidKeySettings>(
          map['androidSettings']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      iosSettings: pulumi.Input.asOptionalInput<
          GoogleCloudRecaptchaenterpriseV1IOSKeySettings>(map['iosSettings']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      testingOptions: pulumi.Input.asOptionalInput<
              GoogleCloudRecaptchaenterpriseV1TestingOptions>(
          map['testingOptions']),
      wafSettings: pulumi.Input.asOptionalInput<
          GoogleCloudRecaptchaenterpriseV1WafSettings>(map['wafSettings']),
      webSettings: pulumi.Input.asOptionalInput<
          GoogleCloudRecaptchaenterpriseV1WebKeySettings>(map['webSettings']),
    );
  }
}
