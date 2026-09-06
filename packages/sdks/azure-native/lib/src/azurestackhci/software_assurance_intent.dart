import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer Intent for Software Assurance Benefit.
enum SoftwareAssuranceIntent implements pulumi.PulumiEnum<String> {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SoftwareAssuranceIntent(this.wireValue);
  @override
  final String wireValue;

  static SoftwareAssuranceIntent fromValue(String value) {
    for (final item in SoftwareAssuranceIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareAssuranceIntent value: $value');
  }
}
