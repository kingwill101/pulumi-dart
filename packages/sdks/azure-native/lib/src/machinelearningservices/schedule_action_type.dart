/// [Required] Specifies the action type of the schedule
enum ScheduleActionType {
  createJob("CreateJob"),
  invokeBatchEndpoint("InvokeBatchEndpoint"),
  createMonitor("CreateMonitor");

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
