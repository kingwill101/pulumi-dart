import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes if it is in detection mode or prevention mode at policy level.
enum PolicyMode implements pulumi.PulumiEnum<String> {
  prevention("Prevention"),
  detection("Detection");

  const PolicyMode(this.wireValue);
  @override
  final String wireValue;

  static PolicyMode fromValue(String value) {
    for (final item in PolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyMode value: $value');
  }
}
