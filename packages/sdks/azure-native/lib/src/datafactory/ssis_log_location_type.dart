import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of SSIS log location.
enum SsisLogLocationType implements pulumi.PulumiEnum<String> {
  file("File");

  const SsisLogLocationType(this.wireValue);
  @override
  final String wireValue;

  static SsisLogLocationType fromValue(String value) {
    for (final item in SsisLogLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisLogLocationType value: $value');
  }
}
