import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag to define if the user allows for crash dump collection.
enum AllowCrashDumpCollection implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const AllowCrashDumpCollection(this.wireValue);
  @override
  final String wireValue;

  static AllowCrashDumpCollection fromValue(String value) {
    for (final item in AllowCrashDumpCollection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowCrashDumpCollection value: $value');
  }
}
