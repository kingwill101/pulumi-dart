import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
enum InstanceOperationType implements pulumi.PulumiEnum<String> {
  valueUpsert("Upsert"),
  valueDelete("Delete");

  const InstanceOperationType(this.wireValue);
  @override
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
