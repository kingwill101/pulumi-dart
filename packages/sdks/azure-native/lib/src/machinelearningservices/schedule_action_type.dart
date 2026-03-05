/// [Required] Specifies the action type of the schedule
enum ScheduleActionType {
  valueCreateJob("CreateJob"),
  valueInvokeBatchEndpoint("InvokeBatchEndpoint"),
  valueCreateMonitor("CreateMonitor");

  const ScheduleActionType(this.wireValue);
  final String wireValue;

  static ScheduleActionType fromValue(String value) {
    for (final item in ScheduleActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleActionType value: $value');
  }
}

