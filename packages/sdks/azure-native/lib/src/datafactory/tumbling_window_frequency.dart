import 'package:pulumi/pulumi.dart' as pulumi;

/// The frequency of the time windows.
enum TumblingWindowFrequency implements pulumi.PulumiEnum<String> {
  minute("Minute"),
  hour("Hour"),
  month("Month");

  const TumblingWindowFrequency(this.wireValue);
  @override
  final String wireValue;

  static TumblingWindowFrequency fromValue(String value) {
    for (final item in TumblingWindowFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TumblingWindowFrequency value: $value');
  }
}
