import 'package:pulumi/pulumi.dart' as pulumi;

/// Action of the geo filter, i.e. allow or block access.
enum GeoFilterActions implements pulumi.PulumiEnum<String> {
  valueBlock("Block"),
  valueAllow("Allow");

  const GeoFilterActions(this.wireValue);
  @override
  final String wireValue;

  static GeoFilterActions fromValue(String value) {
    for (final item in GeoFilterActions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoFilterActions value: $value');
  }
}
