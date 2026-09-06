import 'package:pulumi/pulumi.dart' as pulumi;

/// Fabric path type to use.
enum FabricPathType implements pulumi.PulumiEnum<String> {
  files("files"),
  tables("tables");

  const FabricPathType(this.wireValue);
  @override
  final String wireValue;

  static FabricPathType fromValue(String value) {
    for (final item in FabricPathType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FabricPathType value: $value');
  }
}
