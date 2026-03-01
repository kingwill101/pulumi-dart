// ignore_for_file: unused_element, unnecessary_cast


/// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
class BillingProfilePropertiesResponseIndirectRelationshipInfo {
  /// The billing account name of the partner or the customer for an indirect motion.
  final String? billingAccountName;
  /// The billing profile name of the partner or the customer for an indirect motion.
  final String? billingProfileName;
  /// The display name of the partner or customer for an indirect motion.
  final String? displayName;

  /// Creates a new [BillingProfilePropertiesResponseIndirectRelationshipInfo].
  /// [billingAccountName] The billing account name of the partner or the customer for an indirect motion.
  /// [billingProfileName] The billing profile name of the partner or the customer for an indirect motion.
  /// [displayName] The display name of the partner or customer for an indirect motion.
  BillingProfilePropertiesResponseIndirectRelationshipInfo({
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

  factory BillingProfilePropertiesResponseIndirectRelationshipInfo.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesResponseIndirectRelationshipInfo(
      billingAccountName: map['billingAccountName'] == null ? null : map['billingAccountName'] as String,
      billingProfileName: map['billingProfileName'] == null ? null : map['billingProfileName'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}

