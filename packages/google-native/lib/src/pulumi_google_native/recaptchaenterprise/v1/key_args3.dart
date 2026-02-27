// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_recaptchaenterprise_v1_android_key_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings.dart';

/// The set of arguments for Key.
class KeyArgs3 {
  /// Settings for keys that can be used by Android apps.
  final Input<GoogleCloudRecaptchaenterpriseV1AndroidKeySettings>?
      androidSettings;

  /// Human-readable display name of this key. Modifiable by user.
  final Input<String> displayName;

  /// Settings for keys that can be used by iOS apps.
  final Input<GoogleCloudRecaptchaenterpriseV1IOSKeySettings>? iosSettings;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  final Input<Map<String, String>>? labels;

  /// Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. Options for user acceptance testing.
  final Input<GoogleCloudRecaptchaenterpriseV1TestingOptions>? testingOptions;

  /// Optional. Settings for WAF
  final Input<GoogleCloudRecaptchaenterpriseV1WafSettings>? wafSettings;

  /// Settings for keys that can be used by websites.
  final Input<GoogleCloudRecaptchaenterpriseV1WebKeySettings>? webSettings;

  KeyArgs3({
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
      map['androidSettings'] = Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1AndroidKeySettings,
          Map<String, dynamic>>(androidSettingsValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final iosSettingsValue = iosSettings;
    if (iosSettingsValue != null) {
      map['iosSettings'] = Input.mapOptionalInputValue<
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
      map['testingOptions'] = Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1TestingOptions,
          Map<String, dynamic>>(testingOptionsValue, (value) => value.toMap());
    }
    final wafSettingsValue = wafSettings;
    if (wafSettingsValue != null) {
      map['wafSettings'] = Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1WafSettings,
          Map<String, dynamic>>(wafSettingsValue, (value) => value.toMap());
    }
    final webSettingsValue = webSettings;
    if (webSettingsValue != null) {
      map['webSettings'] = Input.mapOptionalInputValue<
          GoogleCloudRecaptchaenterpriseV1WebKeySettings,
          Map<String, dynamic>>(webSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeyArgs3.fromMap(Map<String, dynamic> map) {
    return KeyArgs3(
      androidSettings: Input.asOptionalInput<
              GoogleCloudRecaptchaenterpriseV1AndroidKeySettings>(
          map['androidSettings']),
      displayName: Input.asInput<String>(map['displayName']),
      iosSettings:
          Input.asOptionalInput<GoogleCloudRecaptchaenterpriseV1IOSKeySettings>(
              map['iosSettings']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      testingOptions:
          Input.asOptionalInput<GoogleCloudRecaptchaenterpriseV1TestingOptions>(
              map['testingOptions']),
      wafSettings:
          Input.asOptionalInput<GoogleCloudRecaptchaenterpriseV1WafSettings>(
              map['wafSettings']),
      webSettings:
          Input.asOptionalInput<GoogleCloudRecaptchaenterpriseV1WebKeySettings>(
              map['webSettings']),
    );
  }
}
