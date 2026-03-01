/// Property value
enum RecordingFrequency {
  cONTINUOUS("CONTINUOUS"),
  dAILY("DAILY");

  const RecordingFrequency(this.value);
  final String value;

  static RecordingFrequency fromValue(String value) {
    for (final item in RecordingFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordingFrequency value: $value');
  }
}

