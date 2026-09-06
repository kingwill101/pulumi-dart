import 'package:pulumi/pulumi.dart' as pulumi;

/// The data format of the message. Optionally the data format can be added to each message.
enum DataFormat implements pulumi.PulumiEnum<String> {
  valueMULTIJSON("MULTIJSON"),
  valueJSON("JSON"),
  valueCSV("CSV");

  const DataFormat(this.wireValue);
  @override
  final String wireValue;

  static DataFormat fromValue(String value) {
    for (final item in DataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFormat value: $value');
  }
}
