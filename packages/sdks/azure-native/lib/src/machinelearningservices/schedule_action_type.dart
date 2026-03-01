/// [Required] Specifies the action type of the schedule
enum ScheduleActionType {
  valueCreateJob("CreateJob"),
  valueInvokeBatchEndpoint("InvokeBatchEndpoint"),
  valueCreateMonitor("CreateMonitor");

  const ScheduleActionType(this.value);
  final String value;

  static ScheduleActionType fromValue(String value) {
    for (final item in ScheduleActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleActionType value: $value');
  }
}

