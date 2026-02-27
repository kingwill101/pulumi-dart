// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../enterprise_key_android_settings/enterprise_key_android_settings.dart';
import '../enterprise_key_ios_settings/enterprise_key_ios_settings.dart';
import '../enterprise_key_testing_options/enterprise_key_testing_options.dart';
import '../enterprise_key_waf_settings/enterprise_key_waf_settings.dart';
import '../enterprise_key_web_settings/enterprise_key_web_settings.dart';

/// The set of arguments for EnterpriseKey.
class EnterpriseKeyArgs {
  /// Settings for keys that can be used by Android apps.
  final Input<EnterpriseKeyAndroidSettings>? androidSettings;

  /// Human-readable display name of this key. Modifiable by user.
  ///
  ///
  ///
  /// - - -
  final Input<String> displayName;

  /// Settings for keys that can be used by iOS apps.
  final Input<EnterpriseKeyIosSettings>? iosSettings;

  /// See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The project for the resource
  final Input<String>? project;

  /// Options for user acceptance testing.
  final Input<EnterpriseKeyTestingOptions>? testingOptions;

  /// Settings specific to keys that can be used for WAF (Web Application Firewall).
  final Input<EnterpriseKeyWafSettings>? wafSettings;

  /// Settings for keys that can be used by websites.
  final Input<EnterpriseKeyWebSettings>? webSettings;

  EnterpriseKeyArgs({
    this.androidSettings,
    required this.displayName,
    this.iosSettings,
    this.labels,
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
          EnterpriseKeyAndroidSettings,
          Map<String, dynamic>>(androidSettingsValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final iosSettingsValue = iosSettings;
    if (iosSettingsValue != null) {
      map['iosSettings'] = Input.mapOptionalInputValue<EnterpriseKeyIosSettings,
          Map<String, dynamic>>(iosSettingsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final testingOptionsValue = testingOptions;
    if (testingOptionsValue != null) {
      map['testingOptions'] = Input.mapOptionalInputValue<
          EnterpriseKeyTestingOptions,
          Map<String, dynamic>>(testingOptionsValue, (value) => value.toMap());
    }
    final wafSettingsValue = wafSettings;
    if (wafSettingsValue != null) {
      map['wafSettings'] = Input.mapOptionalInputValue<EnterpriseKeyWafSettings,
          Map<String, dynamic>>(wafSettingsValue, (value) => value.toMap());
    }
    final webSettingsValue = webSettings;
    if (webSettingsValue != null) {
      map['webSettings'] = Input.mapOptionalInputValue<EnterpriseKeyWebSettings,
          Map<String, dynamic>>(webSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseKeyArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyArgs(
      androidSettings: Input.asOptionalInput<EnterpriseKeyAndroidSettings>(
          map['androidSettings']),
      displayName: Input.asInput<String>(map['displayName']),
      iosSettings:
          Input.asOptionalInput<EnterpriseKeyIosSettings>(map['iosSettings']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      testingOptions: Input.asOptionalInput<EnterpriseKeyTestingOptions>(
          map['testingOptions']),
      wafSettings:
          Input.asOptionalInput<EnterpriseKeyWafSettings>(map['wafSettings']),
      webSettings:
          Input.asOptionalInput<EnterpriseKeyWebSettings>(map['webSettings']),
    );
  }
}
