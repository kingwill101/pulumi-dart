import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of transformation.
enum DataflowMappingType implements pulumi.PulumiEnum<String> {
  newProperties("NewProperties"),
  rename("Rename"),
  compute("Compute"),
  passThrough("PassThrough"),
  builtInFunction("BuiltInFunction");

  const DataflowMappingType(this.wireValue);
  @override
  final String wireValue;

  static DataflowMappingType fromValue(String value) {
    for (final item in DataflowMappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowMappingType value: $value');
  }
}
