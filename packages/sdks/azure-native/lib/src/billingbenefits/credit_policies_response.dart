// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditPoliciesResponse {
  /// Expiration policy of the Credit
  final pulumi.Input<String>? expiration;
  /// Redemption policy of the Credit
  final pulumi.Input<String>? redemption;

  /// Creates a new [CreditPoliciesResponse].
  /// [expiration] Expiration policy of the Credit
  /// [redemption] Redemption policy of the Credit
  CreditPoliciesResponse({
    this.expiration,
    this.redemption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration,
      'redemption': ?redemption,
    };
  }

  factory CreditPoliciesResponse.fromMap(Map<String, dynamic> map) {
    return CreditPoliciesResponse(
      expiration: map['expiration'] == null ? null : (map['expiration']! as String).input(),
      redemption: map['redemption'] == null ? null : (map['redemption']! as String).input(),
    );
  }
}

