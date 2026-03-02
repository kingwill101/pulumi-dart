// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
class BillingProfilePropertiesIndirectRelationshipInfo {
  /// The billing account name of the partner or the customer for an indirect motion.
  final pulumi.Input<String>? billingAccountName;
  /// The billing profile name of the partner or the customer for an indirect motion.
  final pulumi.Input<String>? billingProfileName;
  /// The display name of the partner or customer for an indirect motion.
  final pulumi.Input<String>? displayName;

  /// Creates a new [BillingProfilePropertiesIndirectRelationshipInfo].
  /// [billingAccountName] The billing account name of the partner or the customer for an indirect motion.
  /// [billingProfileName] The billing profile name of the partner or the customer for an indirect motion.
  /// [displayName] The display name of the partner or customer for an indirect motion.
  BillingProfilePropertiesIndirectRelationshipInfo({
    this.billingAccountName,
    this.billingProfileName,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': ?billingAccountName,
      'billingProfileName': ?billingProfileName,
      'displayName': ?displayName,
    };
  }

  factory BillingProfilePropertiesIndirectRelationshipInfo.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesIndirectRelationshipInfo(
      billingAccountName: map['billingAccountName'] == null ? null : (map['billingAccountName']! as String).input(),
      billingProfileName: map['billingProfileName'] == null ? null : (map['billingProfileName']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
    );
  }
}

