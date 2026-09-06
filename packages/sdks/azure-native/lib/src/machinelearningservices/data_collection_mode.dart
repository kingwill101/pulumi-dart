import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or disable data collection.
enum DataCollectionMode implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const DataCollectionMode(this.wireValue);
  @override
  final String wireValue;

  static DataCollectionMode fromValue(String value) {
    for (final item in DataCollectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataCollectionMode value: $value');
  }
}
