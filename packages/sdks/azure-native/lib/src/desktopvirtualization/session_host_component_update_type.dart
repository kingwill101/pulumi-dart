/// The type of maintenance for session host components.
enum SessionHostComponentUpdateType {
  valueDefault("Default"),
  valueScheduled("Scheduled");

  const SessionHostComponentUpdateType(this.value);
  final String value;

  static SessionHostComponentUpdateType fromValue(String value) {
    for (final item in SessionHostComponentUpdateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHostComponentUpdateType value: $value');
  }
}

