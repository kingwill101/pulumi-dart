import 'package:pulumi/pulumi.dart' as pulumi;

/// The alert rule severity.
enum Severity implements pulumi.PulumiEnum<String> {
  valueSev0("Sev0"),
  valueSev1("Sev1"),
  valueSev2("Sev2"),
  valueSev3("Sev3"),
  valueSev4("Sev4");

  const Severity(this.wireValue);
  @override
  final String wireValue;

  static Severity fromValue(String value) {
    for (final item in Severity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Severity value: $value');
  }
}
