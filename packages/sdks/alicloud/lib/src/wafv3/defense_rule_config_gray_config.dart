// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefenseRuleConfigGrayConfig {
  /// The percentage of traffic for which the canary release takes effect. The value must be in the range of 1 to 100.
  final pulumi.Input<int>? grayRate;
  /// The sub-feature of the statistical object. This parameter is required when you set the `GrayTarget` parameter to `cookie`, `header`, or `queryarg`.
  final pulumi.Input<String>? graySubKey;
  /// The type of the canary release object. Valid values:
  final pulumi.Input<String>? grayTarget;

  /// Creates a new [DefenseRuleConfigGrayConfig].
  /// [grayRate] The percentage of traffic for which the canary release takes effect. The value must be in the range of 1 to 100.
  /// [graySubKey] The sub-feature of the statistical object. This parameter is required when you set the `GrayTarget` parameter to `cookie`, `header`, or `queryarg`.
  /// [grayTarget] The type of the canary release object. Valid values:
  DefenseRuleConfigGrayConfig({
    this.grayRate,
    this.graySubKey,
    this.grayTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grayRate': ?grayRate,
      'graySubKey': ?graySubKey,
      'grayTarget': ?grayTarget,
    };
  }

  factory DefenseRuleConfigGrayConfig.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigGrayConfig(
      grayRate: map['grayRate'] == null ? null : (map['grayRate']! as int).input(),
      graySubKey: map['graySubKey'] == null ? null : (map['graySubKey']! as String).input(),
      grayTarget: map['grayTarget'] == null ? null : (map['grayTarget']! as String).input(),
    );
  }
}

