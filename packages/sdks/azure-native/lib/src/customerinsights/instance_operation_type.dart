/// Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
enum InstanceOperationType {
  valueUpsert("Upsert"),
  valueDelete("Delete");

  const InstanceOperationType(this.wireValue);
  final String wireValue;

  static InstanceOperationType fromValue(String value) {
    for (final item in InstanceOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceOperationType value: $value');
  }
}

