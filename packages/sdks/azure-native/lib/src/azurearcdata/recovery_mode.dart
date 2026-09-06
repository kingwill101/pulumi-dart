import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the database.
enum RecoveryMode implements pulumi.PulumiEnum<String> {
  valueFull("Full"),
  valueBulkLogged("Bulk-logged"),
  valueSimple("Simple");

  const RecoveryMode(this.wireValue);
  @override
  final String wireValue;

  static RecoveryMode fromValue(String value) {
    for (final item in RecoveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryMode value: $value');
  }
}
