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
  /// > **NOTE:** If any <span pulumi-lang-nodejs="`reportOverrides`" pulumi-lang-dotnet="`ReportOverrides`" pulumi-lang-go="`reportOverrides`" pulumi-lang-python="`report_overrides`" pulumi-lang-yaml="`reportOverrides`" pulumi-lang-java="`reportOverrides`">`report_overrides`</span> are set to the same value as `task_report_config.report_level`, they will always be flagged as changed. Only set overrides to a value that differs from `task_report_config.report_level`.
  final String? verifiedOverride;

  TaskTaskReportConfigReportOverrides({
    this.deletedOverride,
    this.skippedOverride,
    this.transferredOverride,
    this.verifiedOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletedOverrideValue = deletedOverride;
    if (deletedOverrideValue != null) {
      map['deletedOverride'] = deletedOverrideValue;
    }
    final skippedOverrideValue = skippedOverride;
    if (skippedOverrideValue != null) {
      map['skippedOverride'] = skippedOverrideValue;
    }
    final transferredOverrideValue = transferredOverride;
    if (transferredOverrideValue != null) {
      map['transferredOverride'] = transferredOverrideValue;
    }
    final verifiedOverrideValue = verifiedOverride;
    if (verifiedOverrideValue != null) {
      map['verifiedOverride'] = verifiedOverrideValue;
    }
    return map;
  }

  factory TaskTaskReportConfigReportOverrides.fromMap(
      Map<String, dynamic> map) {
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
