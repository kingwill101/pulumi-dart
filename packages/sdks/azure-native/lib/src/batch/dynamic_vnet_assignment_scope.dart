/// The scope of dynamic vnet assignment.
enum DynamicVNetAssignmentScope {
  none("none"),
  job("job");

  const DynamicVNetAssignmentScope(this.wireValue);
  final String wireValue;

  static DynamicVNetAssignmentScope fromValue(String value) {
    for (final item in DynamicVNetAssignmentScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicVNetAssignmentScope value: $value');
  }
}

