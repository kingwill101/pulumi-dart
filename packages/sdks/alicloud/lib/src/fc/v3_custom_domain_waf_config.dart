// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3CustomDomainWafConfig {
  /// Enable WAF protection
  final pulumi.Input<bool>? enableWaf;

  /// Creates a new [V3CustomDomainWafConfig].
  /// [enableWaf] Enable WAF protection
  V3CustomDomainWafConfig({
    this.enableWaf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableWaf': ?enableWaf,
    };
  }

  factory V3CustomDomainWafConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainWafConfig(
      enableWaf: map['enableWaf'] == null ? null : (map['enableWaf'] as bool).input(),
    );
  }
}

