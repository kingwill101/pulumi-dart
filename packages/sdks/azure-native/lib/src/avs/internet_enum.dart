import 'package:pulumi/pulumi.dart' as pulumi;

/// Connectivity to internet is enabled or disabled
enum InternetEnum implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const InternetEnum(this.wireValue);
  @override
  final String wireValue;

  static InternetEnum fromValue(String value) {
    for (final item in InternetEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternetEnum value: $value');
  }
}
