// ignore_for_file: unused_element, unnecessary_cast

class AppProfileDataBoostIsolationReadOnlyBigtable {
  /// The Compute Billing Owner for this Data Boost App Profile.
  /// Possible values are: `HOST_PAYS`.
  final String computeBillingOwner;

  AppProfileDataBoostIsolationReadOnlyBigtable({
    required this.computeBillingOwner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeBillingOwner'] = computeBillingOwner;
    return map;
  }

  factory AppProfileDataBoostIsolationReadOnlyBigtable.fromMap(
      Map<String, dynamic> map) {
    return AppProfileDataBoostIsolationReadOnlyBigtable(
      computeBillingOwner: map['computeBillingOwner'] as String,
    );
  }
}
