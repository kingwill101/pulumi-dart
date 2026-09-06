import 'package:pulumi/pulumi.dart' as pulumi;

/// Treatment of URL query terms when forming the cache key.
enum FrontDoorQuery implements pulumi.PulumiEnum<String> {
  stripNone("StripNone"),
  stripAll("StripAll"),
  stripOnly("StripOnly"),
  stripAllExcept("StripAllExcept");

  const FrontDoorQuery(this.wireValue);
  @override
  final String wireValue;

  static FrontDoorQuery fromValue(String value) {
    for (final item in FrontDoorQuery.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorQuery value: $value');
  }
}
