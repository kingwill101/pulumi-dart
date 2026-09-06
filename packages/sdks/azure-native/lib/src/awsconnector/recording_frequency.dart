import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum RecordingFrequency implements pulumi.PulumiEnum<String> {
  cONTINUOUS("CONTINUOUS"),
  dAILY("DAILY");

  const RecordingFrequency(this.wireValue);
  @override
  final String wireValue;

  static RecordingFrequency fromValue(String value) {
    for (final item in RecordingFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordingFrequency value: $value');
  }
}
