// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_android_key_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings.dart';

/// {@template pulumi_recaptchaenterprise_v1_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_recaptchaenterprise_v1_key_args_doc}
class KeyArgs {
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

  /// Creates a new [KeyArgs].
  /// [androidSettings] Settings for keys that can be used by Android apps.
  /// [displayName] Human-readable display name of this key. Modifiable by user.
  /// [iosSettings] Settings for keys that can be used by iOS apps.
  /// [labels] Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  /// [name] Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  /// [project] Optional.
  /// [testingOptions] Optional. Options for user acceptance testing.
  /// [wafSettings] Optional. Settings for WAF
  /// [webSettings] Settings for keys that can be used by websites.
  KeyArgs({
    GoogleCloudRecaptchaenterpriseV1AndroidKeySettings? androidSettings,
    required String displayName,
    GoogleCloudRecaptchaenterpriseV1IOSKeySettings? iosSettings,
    Map<String, String>? labels,
    String? name,
    String? project,
    GoogleCloudRecaptchaenterpriseV1TestingOptions? testingOptions,
    GoogleCloudRecaptchaenterpriseV1WafSettings? wafSettings,
    GoogleCloudRecaptchaenterpriseV1WebKeySettings? webSettings,
  })  : androidSettings = pulumi.Input.asOptionalInput<
                GoogleCloudRecaptchaenterpriseV1AndroidKeySettings>(
            androidSettings),
        displayName = pulumi.Input.asInput<String>(displayName),
        iosSettings = pulumi.Input.asOptionalInput<
            GoogleCloudRecaptchaenterpriseV1IOSKeySettings>(iosSettings),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        testingOptions = pulumi.Input.asOptionalInput<
            GoogleCloudRecaptchaenterpriseV1TestingOptions>(testingOptions),
        wafSettings = pulumi.Input.asOptionalInput<
            GoogleCloudRecaptchaenterpriseV1WafSettings>(wafSettings),
        webSettings = pulumi.Input.asOptionalInput<
            GoogleCloudRecaptchaenterpriseV1WebKeySettings>(webSettings);

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

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      androidSettings: map['androidSettings'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromMap(
              (map['androidSettings'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      iosSettings: map['iosSettings'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromMap(
              (map['iosSettings'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      testingOptions: map['testingOptions'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1TestingOptions.fromMap(
              (map['testingOptions'] as Map).cast<String, dynamic>()),
      wafSettings: map['wafSettings'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1WafSettings.fromMap(
              (map['wafSettings'] as Map).cast<String, dynamic>()),
      webSettings: map['webSettings'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromMap(
              (map['webSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
