import 'package:pulumi/pulumi.dart' as pulumi;

/// The severity of triggered alert.
enum AlertSeverity implements pulumi.PulumiEnum<String> {
  sev0("Sev0"),
  sev1("Sev1"),
  sev2("Sev2"),
  sev3("Sev3"),
  sev4("Sev4");

  const AlertSeverity(this.wireValue);
  @override
  final String wireValue;

  static AlertSeverity fromValue(String value) {
    for (final item in AlertSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertSeverity value: $value');
  }
}
