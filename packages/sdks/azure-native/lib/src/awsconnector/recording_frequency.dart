/// Property value
enum RecordingFrequency {
  cONTINUOUS("CONTINUOUS"),
  dAILY("DAILY");

  const RecordingFrequency(this.wireValue);
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

