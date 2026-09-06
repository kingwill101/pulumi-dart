import 'package:pulumi/pulumi.dart' as pulumi;

/// The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time
enum OperationPreferencesRegionConcurrencyType implements pulumi.PulumiEnum<String> {
  pARALLEL("PARALLEL"),
  sEQUENTIAL("SEQUENTIAL");

  const OperationPreferencesRegionConcurrencyType(this.wireValue);
  @override
  final String wireValue;

  static OperationPreferencesRegionConcurrencyType fromValue(String value) {
    for (final item in OperationPreferencesRegionConcurrencyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationPreferencesRegionConcurrencyType value: $value');
  }
}
