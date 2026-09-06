import 'package:pulumi/pulumi.dart' as pulumi;

/// The list of Antivirus solutions currently provided.
enum AntivirusSolutions implements pulumi.PulumiEnum<String> {
  defender("Defender"),
  clamAv("ClamAv");

  const AntivirusSolutions(this.wireValue);
  @override
  final String wireValue;

  static AntivirusSolutions fromValue(String value) {
    for (final item in AntivirusSolutions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AntivirusSolutions value: $value');
  }
}
