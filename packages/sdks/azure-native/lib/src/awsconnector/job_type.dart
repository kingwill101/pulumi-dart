/// Property value
enum JobType {
  oNETIME("ONE_TIME"),
  sCHEDULED("SCHEDULED");

  const JobType(this.wireValue);
  final String wireValue;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}

