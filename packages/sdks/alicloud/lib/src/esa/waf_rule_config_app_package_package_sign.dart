// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigAppPackagePackageSign {
  final pulumi.Input<String>? name;
  /// The digital signature of a legitimate app package.
  final pulumi.Input<String>? sign;

  /// Creates a new [WafRuleConfigAppPackagePackageSign].
  /// [name] Optional.
  /// [sign] The digital signature of a legitimate app package.
  WafRuleConfigAppPackagePackageSign({
    this.name,
    this.sign,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sign': ?sign,
    };
  }

  factory WafRuleConfigAppPackagePackageSign.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigAppPackagePackageSign(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sign: map['sign'] == null ? null : (map['sign'] as String).input(),
    );
  }
}

