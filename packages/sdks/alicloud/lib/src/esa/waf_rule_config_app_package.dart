// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_app_package_package_sign.dart';

class WafRuleConfigAppPackage {
  /// Security mechanism to prevent apps from being repackaged. See `package_signs` below.
  final pulumi.Input<List<WafRuleConfigAppPackagePackageSign>>? packageSigns;

  /// Creates a new [WafRuleConfigAppPackage].
  /// [packageSigns] Security mechanism to prevent apps from being repackaged. See `package_signs` below.
  WafRuleConfigAppPackage({
    this.packageSigns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageSigns': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigAppPackagePackageSign>, List<Map<String, dynamic>>>(packageSigns, (value) => pulumi.Input.encodeList<WafRuleConfigAppPackagePackageSign, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WafRuleConfigAppPackage.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigAppPackage(
      packageSigns: (() { final guardedValue = map['packageSigns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigAppPackagePackageSign>(guardedValue, (value) => WafRuleConfigAppPackagePackageSign.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

