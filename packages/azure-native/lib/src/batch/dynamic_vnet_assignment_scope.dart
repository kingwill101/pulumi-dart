/// The scope of dynamic vnet assignment.
enum DynamicVNetAssignmentScope {
  none("none"),
  job("job");

  const DynamicVNetAssignmentScope(this.value);
  final String value;

  static DynamicVNetAssignmentScope fromValue(String value) {
    for (final item in DynamicVNetAssignmentScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicVNetAssignmentScope value: $value');
  }
}

