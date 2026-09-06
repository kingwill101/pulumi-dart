import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the types of schema for analytical storage.
enum AnalyticalStorageSchemaType implements pulumi.PulumiEnum<String> {
  valueWellDefined("WellDefined"),
  valueFullFidelity("FullFidelity");

  const AnalyticalStorageSchemaType(this.wireValue);
  @override
  final String wireValue;

  static AnalyticalStorageSchemaType fromValue(String value) {
    for (final item in AnalyticalStorageSchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticalStorageSchemaType value: $value');
  }
}
