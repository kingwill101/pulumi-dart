import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the custom mapping
enum InputSchemaMappingType implements pulumi.PulumiEnum<String> {
  valueJson("Json");

  const InputSchemaMappingType(this.wireValue);
  @override
  final String wireValue;

  static InputSchemaMappingType fromValue(String value) {
    for (final item in InputSchemaMappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputSchemaMappingType value: $value');
  }
}
