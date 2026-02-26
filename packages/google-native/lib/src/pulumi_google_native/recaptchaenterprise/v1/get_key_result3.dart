// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_android_key_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options_response.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings_response.dart';

/// Result data returned by getKey.
class GetKeyResult3 {
  /// Settings for keys that can be used by Android apps.
  final GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse
      androidSettings;

  /// The timestamp corresponding to the creation of this key.
  final String createTime;

  /// Human-readable display name of this key. Modifiable by user.
  final String displayName;

  /// Settings for keys that can be used by iOS apps.
  final GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse iosSettings;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  final Map<String, String> labels;

  /// Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  final String name;

  /// Optional. Options for user acceptance testing.
  final GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse testingOptions;

  /// Optional. Settings for WAF
  final GoogleCloudRecaptchaenterpriseV1WafSettingsResponse wafSettings;

  /// Settings for keys that can be used by websites.
  final GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse webSettings;

  GetKeyResult3({
    required this.androidSettings,
    required this.createTime,
    required this.displayName,
    required this.iosSettings,
    required this.labels,
    required this.name,
    required this.testingOptions,
    required this.wafSettings,
    required this.webSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidSettings'] = androidSettings.toMap();
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['iosSettings'] = iosSettings.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['testingOptions'] = testingOptions.toMap();
    map['wafSettings'] = wafSettings.toMap();
    map['webSettings'] = webSettings.toMap();
    return map;
  }

  factory GetKeyResult3.fromMap(Map<String, dynamic> map) {
    return GetKeyResult3(
      androidSettings:
          GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse.fromMap(
              (map['androidSettings'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      iosSettings:
          GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse.fromMap(
              (map['iosSettings'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      testingOptions:
          GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse.fromMap(
              (map['testingOptions'] as Map).cast<String, dynamic>()),
      wafSettings: GoogleCloudRecaptchaenterpriseV1WafSettingsResponse.fromMap(
          (map['wafSettings'] as Map).cast<String, dynamic>()),
      webSettings:
          GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse.fromMap(
              (map['webSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
