import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
enum EnablementMode implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  enabled("Enabled"),
  disabled("Disabled");

  const EnablementMode(this.wireValue);
  @override
  final String wireValue;

  static EnablementMode fromValue(String value) {
    for (final item in EnablementMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementMode value: $value');
  }
}
