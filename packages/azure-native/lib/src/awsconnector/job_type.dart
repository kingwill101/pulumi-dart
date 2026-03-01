/// Property value
enum JobType {
  oNETIME("ONE_TIME"),
  sCHEDULED("SCHEDULED");

  const JobType(this.value);
  final String value;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}

