import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of asset reference.
enum ReferenceType implements pulumi.PulumiEnum<String> {
  id("Id"),
  dataPath("DataPath"),
  outputPath("OutputPath");

  const ReferenceType(this.wireValue);
  @override
  final String wireValue;

  static ReferenceType fromValue(String value) {
    for (final item in ReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReferenceType value: $value');
  }
}
