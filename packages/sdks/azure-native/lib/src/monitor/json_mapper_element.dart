import 'package:pulumi/pulumi.dart' as pulumi;

/// Define the destination's element. The element is the body or the attributes of the message, to which the json array mapper will write the output map.
enum JsonMapperElement implements pulumi.PulumiEnum<String> {
  body("body"),
  attributes("attributes");

  const JsonMapperElement(this.wireValue);
  @override
  final String wireValue;

  static JsonMapperElement fromValue(String value) {
    for (final item in JsonMapperElement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonMapperElement value: $value');
  }
}
