import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum FieldLogLevel implements pulumi.PulumiEnum<String> {
  aLL("ALL"),
  eRROR("ERROR"),
  nONE("NONE");

  const FieldLogLevel(this.wireValue);
  @override
  final String wireValue;

  static FieldLogLevel fromValue(String value) {
    for (final item in FieldLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldLogLevel value: $value');
  }
}
