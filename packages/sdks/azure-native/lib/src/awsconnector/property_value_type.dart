import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum PropertyValueType implements pulumi.PulumiEnum<String> {
  pLAINTEXT("PLAIN_TEXT"),
  sTRINGIFIEDJSON("STRINGIFIED_JSON");

  const PropertyValueType(this.wireValue);
  @override
  final String wireValue;

  static PropertyValueType fromValue(String value) {
    for (final item in PropertyValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertyValueType value: $value');
  }
}
