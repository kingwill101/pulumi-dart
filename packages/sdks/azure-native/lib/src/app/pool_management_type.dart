import 'package:pulumi/pulumi.dart' as pulumi;

/// The pool management type of the session pool.
enum PoolManagementType implements pulumi.PulumiEnum<String> {
  valueManual("Manual"),
  valueDynamic("Dynamic");

  const PoolManagementType(this.wireValue);
  @override
  final String wireValue;

  static PoolManagementType fromValue(String value) {
    for (final item in PoolManagementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PoolManagementType value: $value');
  }
}
