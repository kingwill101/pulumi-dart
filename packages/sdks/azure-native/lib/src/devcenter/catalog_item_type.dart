import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates catalog item types.
enum CatalogItemType implements pulumi.PulumiEnum<String> {
  valueEnvironmentDefinition("EnvironmentDefinition");

  const CatalogItemType(this.wireValue);
  @override
  final String wireValue;

  static CatalogItemType fromValue(String value) {
    for (final item in CatalogItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogItemType value: $value');
  }
}
