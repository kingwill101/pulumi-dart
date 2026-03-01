/// The list of Antivirus solutions currently provided.
enum AntivirusSolutions {
  defender("Defender"),
  clamAv("ClamAv");

  const AntivirusSolutions(this.value);
  final String value;

  static AntivirusSolutions fromValue(String value) {
    for (final item in AntivirusSolutions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AntivirusSolutions value: $value');
  }
}

