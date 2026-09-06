import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of a Kusto offering.
enum KustoOfferingType implements pulumi.PulumiEnum<String> {
  adx("adx"),
  free("free"),
  fabric("fabric");

  const KustoOfferingType(this.wireValue);
  @override
  final String wireValue;

  static KustoOfferingType fromValue(String value) {
    for (final item in KustoOfferingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KustoOfferingType value: $value');
  }
}
