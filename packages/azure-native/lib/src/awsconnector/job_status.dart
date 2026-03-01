/// Property value
enum JobStatus {
  cANCELLED("CANCELLED"),
  cOMPLETE("COMPLETE"),
  iDLE("IDLE"),
  pAUSED("PAUSED"),
  rUNNING("RUNNING"),
  uSERPAUSED("USER_PAUSED");

  const JobStatus(this.value);
  final String value;

  static JobStatus fromValue(String value) {
    for (final item in JobStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStatus value: $value');
  }
}

