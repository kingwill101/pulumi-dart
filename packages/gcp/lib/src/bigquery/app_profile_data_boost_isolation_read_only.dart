// ignore_for_file: unused_element, unnecessary_cast

class AppProfileDataBoostIsolationReadOnly {
  /// The Compute Billing Owner for this Data Boost App Profile.
  /// Possible values are: `HOST_PAYS`.
  final String computeBillingOwner;

  /// Creates a new [AppProfileDataBoostIsolationReadOnly].
  /// [computeBillingOwner] The Compute Billing Owner for this Data Boost App Profile.
  AppProfileDataBoostIsolationReadOnly({
    required this.computeBillingOwner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeBillingOwner'] = computeBillingOwner;
    return map;
  }

  factory AppProfileDataBoostIsolationReadOnly.fromMap(
      Map<String, dynamic> map) {
    return AppProfileDataBoostIsolationReadOnly(
      computeBillingOwner: map['computeBillingOwner'] as String,
    );
  }
}
