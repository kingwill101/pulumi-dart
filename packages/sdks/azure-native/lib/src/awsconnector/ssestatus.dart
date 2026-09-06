import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum SSEStatus implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  dISABLING("DISABLING"),
  eNABLED("ENABLED"),
  eNABLING("ENABLING");

  const SSEStatus(this.wireValue);
  @override
  final String wireValue;

  static SSEStatus fromValue(String value) {
    for (final item in SSEStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSEStatus value: $value');
  }
}
