import 'package:pulumi/pulumi.dart' as pulumi;

/// Level of the logs to be collected.
enum LogCollectionLevel implements pulumi.PulumiEnum<String> {
  valueError("Error"),
  valueVerbose("Verbose");

  const LogCollectionLevel(this.wireValue);
  @override
  final String wireValue;

  static LogCollectionLevel fromValue(String value) {
    for (final item in LogCollectionLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogCollectionLevel value: $value');
  }
}
