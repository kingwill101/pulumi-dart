/// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
enum ComputeSchedulingRestartTypeVmmigrationV1alpha1 {
  restartTypeUnspecified("RESTART_TYPE_UNSPECIFIED"),
  automaticRestart("AUTOMATIC_RESTART"),
  noAutomaticRestart("NO_AUTOMATIC_RESTART");

  const ComputeSchedulingRestartTypeVmmigrationV1alpha1(this.value);
  final String value;

  static ComputeSchedulingRestartTypeVmmigrationV1alpha1 fromValue(
    String value,
  ) {
    for (final item in ComputeSchedulingRestartTypeVmmigrationV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ComputeSchedulingRestartTypeVmmigrationV1alpha1 value: $value',
    );
  }
}
