import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the schema
enum SchemaStatus implements pulumi.PulumiEnum<String> {
  valueNew("New"),
  valueApproved("Approved");

  const SchemaStatus(this.wireValue);
  @override
  final String wireValue;

  static SchemaStatus fromValue(String value) {
    for (final item in SchemaStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaStatus value: $value');
  }
}
