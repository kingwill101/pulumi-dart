/// The type of deadline the scheduled action is supposed to follow for the schedule. If no value is passed, it will default to InitiateAt.
enum DeadlineType {
  unknown("Unknown"),
  initiateAt("InitiateAt"),
  completeBy("CompleteBy");

  const DeadlineType(this.wireValue);
  final String wireValue;

  static DeadlineType fromValue(String value) {
    for (final item in DeadlineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeadlineType value: $value');
  }
}

