/// Define the destination's element. The element is the body or the attributes of the message, to which the json array mapper will write the output map.
enum JsonMapperElement {
  body("body"),
  attributes("attributes");

  const JsonMapperElement(this.value);
  final String value;

  static JsonMapperElement fromValue(String value) {
    for (final item in JsonMapperElement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonMapperElement value: $value');
  }
}

