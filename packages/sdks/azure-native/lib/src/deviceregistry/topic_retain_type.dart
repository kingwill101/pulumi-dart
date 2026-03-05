/// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
enum TopicRetainType {
  keep("Keep"),
  never_("Never");

  const TopicRetainType(this.wireValue);
  final String wireValue;

  static TopicRetainType fromValue(String value) {
    for (final item in TopicRetainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TopicRetainType value: $value');
  }
}

