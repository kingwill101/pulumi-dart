/// Type of action being executed by the job step.
enum JobStepActionType {
  valueTSql("TSql");

  const JobStepActionType(this.value);
  final String value;

  static JobStepActionType fromValue(String value) {
    for (final item in JobStepActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepActionType value: $value');
  }
}

