// ignore_for_file: unused_element, unnecessary_cast

import 'waf_rule_config_app_sdk_custom_sign.dart';

class WafRuleConfigAppSdk {
  /// Custom fields used for mobile app signature validation. See `custom_sign` below.
  final WafRuleConfigAppSdkCustomSign? customSign;
  /// Indicates whether the custom signature field validation is enabled.
  final String? customSignStatus;
  /// Detected abnormal behaviors of the application.
  final List<String>? featureAbnormals;

  /// Creates a new [WafRuleConfigAppSdk].
  /// [customSign] Custom fields used for mobile app signature validation. See `custom_sign` below.
  /// [customSignStatus] Indicates whether the custom signature field validation is enabled.
  /// [featureAbnormals] Detected abnormal behaviors of the application.
  WafRuleConfigAppSdk({
    this.customSign,
    this.customSignStatus,
    this.featureAbnormals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSign': ?customSign == null ? null : customSign!.toMap(),
      'customSignStatus': ?customSignStatus,
      'featureAbnormals': ?featureAbnormals,
    };
  }

  factory WafRuleConfigAppSdk.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigAppSdk(
      customSign: map['customSign'] == null ? null : WafRuleConfigAppSdkCustomSign.fromMap((map['customSign'] as Map).cast<String, dynamic>()),
      customSignStatus: map['customSignStatus'] == null ? null : map['customSignStatus'] as String,
      featureAbnormals: map['featureAbnormals'] == null ? null : (map['featureAbnormals'] as List).cast<String>(),
    );
  }
}

