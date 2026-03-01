/// The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time
enum OperationPreferencesRegionConcurrencyType {
  pARALLEL("PARALLEL"),
  sEQUENTIAL("SEQUENTIAL");

  const OperationPreferencesRegionConcurrencyType(this.value);
  final String value;

  static OperationPreferencesRegionConcurrencyType fromValue(String value) {
    for (final item in OperationPreferencesRegionConcurrencyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationPreferencesRegionConcurrencyType value: $value');
  }
}

