/// Policy type
enum ReconciliationPolicies {
  periodic("periodic");

  const ReconciliationPolicies(this.wireValue);
  final String wireValue;

  static ReconciliationPolicies fromValue(String value) {
    for (final item in ReconciliationPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReconciliationPolicies value: $value');
  }
}
