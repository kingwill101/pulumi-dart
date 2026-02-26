// ignore_for_file: unused_element, unnecessary_cast

class AppProfileDataBoostIsolationReadOnly2 {
  /// The Compute Billing Owner for this Data Boost App Profile.
  /// Possible values are: `HOST_PAYS`.
  final String computeBillingOwner;

  AppProfileDataBoostIsolationReadOnly2({
    required this.computeBillingOwner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeBillingOwner'] = computeBillingOwner;
    return map;
  }

  factory AppProfileDataBoostIsolationReadOnly2.fromMap(
      Map<String, dynamic> map) {
    return AppProfileDataBoostIsolationReadOnly2(
      computeBillingOwner: map['computeBillingOwner'] as String,
    );
  }
}
