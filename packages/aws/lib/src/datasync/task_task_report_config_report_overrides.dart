// ignore_for_file: unused_element, unnecessary_cast

class TaskTaskReportConfigReportOverrides {
  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to delete in your destination location. This only applies if you configure your task to delete data in the destination that isn't in the source. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final String? deletedOverride;

  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to skip during your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final String? skippedOverride;

  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final String? transferredOverride;

  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to verify at the end of your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  ///
  /// > **NOTE:** If any `report_overrides` are set to the same value as `task_report_config.report_level`, they will always be flagged as changed. Only set overrides to a value that differs from `task_report_config.report_level`.
  final String? verifiedOverride;

  /// Creates a new [TaskTaskReportConfigReportOverrides].
  /// [deletedOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to delete in your destination location. This only applies if you configure your task to delete data in the destination that isn't in the source. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [skippedOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to skip during your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [transferredOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [verifiedOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to verify at the end of your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  TaskTaskReportConfigReportOverrides({
    this.deletedOverride,
    this.skippedOverride,
    this.transferredOverride,
    this.verifiedOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletedOverride': ?deletedOverride,
      'skippedOverride': ?skippedOverride,
      'transferredOverride': ?transferredOverride,
      'verifiedOverride': ?verifiedOverride,
    };
  }

  factory TaskTaskReportConfigReportOverrides.fromMap(
    Map<String, dynamic> map,
  ) {
    return TaskTaskReportConfigReportOverrides(
      deletedOverride: map['deletedOverride'] == null
          ? null
          : map['deletedOverride'] as String,
      skippedOverride: map['skippedOverride'] == null
          ? null
          : map['skippedOverride'] as String,
      transferredOverride: map['transferredOverride'] == null
          ? null
          : map['transferredOverride'] as String,
      verifiedOverride: map['verifiedOverride'] == null
          ? null
          : map['verifiedOverride'] as String,
    );
  }
}
