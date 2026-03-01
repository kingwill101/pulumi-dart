/// Describes if results should be in ascending/descending order
enum FirewallPolicyIDPSQuerySortOrder {
  valueAscending("Ascending"),
  valueDescending("Descending");

  const FirewallPolicyIDPSQuerySortOrder(this.value);
  final String value;

  static FirewallPolicyIDPSQuerySortOrder fromValue(String value) {
    for (final item in FirewallPolicyIDPSQuerySortOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyIDPSQuerySortOrder value: $value');
  }
}

