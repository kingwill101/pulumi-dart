// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_app_sdk_custom_sign.dart';

class WafRuleConfigAppSdk {
  /// Custom fields used for mobile app signature validation. See `custom_sign` below.
  final pulumi.Input<WafRuleConfigAppSdkCustomSign>? customSign;
  /// Indicates whether the custom signature field validation is enabled.
  final pulumi.Input<String>? customSignStatus;
  /// Detected abnormal behaviors of the application.
  final pulumi.Input<List<String>>? featureAbnormals;

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
      'customSign': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigAppSdkCustomSign, Map<String, dynamic>>(customSign, (value) => value.toMap()),
      'customSignStatus': ?customSignStatus,
      'featureAbnormals': ?featureAbnormals,
    };
  }

  factory WafRuleConfigAppSdk.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigAppSdk(
      customSign: map['customSign'] == null ? null : (WafRuleConfigAppSdkCustomSign.fromMap((map['customSign'] as Map).cast<String, dynamic>())).input(),
      customSignStatus: map['customSignStatus'] == null ? null : (map['customSignStatus'] as String).input(),
      featureAbnormals: map['featureAbnormals'] == null ? null : ((map['featureAbnormals'] as List).cast<String>()).input(),
    );
  }
}

