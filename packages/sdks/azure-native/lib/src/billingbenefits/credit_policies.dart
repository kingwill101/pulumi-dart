// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditPolicies {
  /// Expiration policy of the Credit
  final pulumi.Input<String>? expiration;
  /// Redemption policy of the Credit
  final pulumi.Input<String>? redemption;

  /// Creates a new [CreditPolicies].
  /// [expiration] Expiration policy of the Credit
  /// [redemption] Redemption policy of the Credit
  const CreditPolicies({
    this.expiration,
    this.redemption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration,
      'redemption': ?redemption,
    };
  }

  factory CreditPolicies.fromMap(Map<String, dynamic> map) {
    return CreditPolicies(
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redemption: (() { final guardedValue = map['redemption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
