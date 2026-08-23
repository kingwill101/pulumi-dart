// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskTaskReportConfigReportOverrides {
  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to delete in your destination location. This only applies if you configure your task to delete data in the destination that isn't in the source. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final pulumi.Input<String>? deletedOverride;
  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to skip during your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final pulumi.Input<String>? skippedOverride;
  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final pulumi.Input<String>? transferredOverride;
  /// Specifies the level of reporting for the files, objects, and directories that DataSync attempted to verify at the end of your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  ///
  /// &gt; **NOTE:** If any `reportOverrides` are set to the same value as `task_report_config.report_level`, they will always be flagged as changed. Only set overrides to a value that differs from `task_report_config.report_level`.
  final pulumi.Input<String>? verifiedOverride;

  /// Creates a new [TaskTaskReportConfigReportOverrides].
  /// [deletedOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to delete in your destination location. This only applies if you configure your task to delete data in the destination that isn't in the source. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [skippedOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to skip during your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [transferredOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [verifiedOverride] Specifies the level of reporting for the files, objects, and directories that DataSync attempted to verify at the end of your transfer. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  const TaskTaskReportConfigReportOverrides({
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

  factory TaskTaskReportConfigReportOverrides.fromMap(Map<String, dynamic> map) {
    return TaskTaskReportConfigReportOverrides(
      deletedOverride: (() { final guardedValue = map['deletedOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skippedOverride: (() { final guardedValue = map['skippedOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferredOverride: (() { final guardedValue = map['transferredOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifiedOverride: (() { final guardedValue = map['verifiedOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
