// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
class BillingProfilePropertiesResponseIndirectRelationshipInfo {
  /// The billing account name of the partner or the customer for an indirect motion.
  final pulumi.Input<String>? billingAccountName;

  /// The billing profile name of the partner or the customer for an indirect motion.
  final pulumi.Input<String>? billingProfileName;

  /// The display name of the partner or customer for an indirect motion.
  final pulumi.Input<String>? displayName;

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

  factory BillingProfilePropertiesResponseIndirectRelationshipInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return BillingProfilePropertiesResponseIndirectRelationshipInfo(
      billingAccountName: (() {
        final guardedValue = map['billingAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingProfileName: (() {
        final guardedValue = map['billingProfileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
