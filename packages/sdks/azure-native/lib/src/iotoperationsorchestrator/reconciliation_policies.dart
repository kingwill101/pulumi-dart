/// Policy type
enum ReconciliationPolicies {
  periodic("periodic");

  const ReconciliationPolicies(this.value);
  final String value;

  static ReconciliationPolicies fromValue(String value) {
    for (final item in ReconciliationPolicies.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReconciliationPolicies value: $value');
  }
}

