/// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
enum TopicRetainType {
  keep("Keep"),
  never("Never");

  const TopicRetainType(this.value);
  final String value;

  static TopicRetainType fromValue(String value) {
    for (final item in TopicRetainType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TopicRetainType value: $value');
  }
}

