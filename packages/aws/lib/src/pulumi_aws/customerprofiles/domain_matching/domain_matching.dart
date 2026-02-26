// ignore_for_file: unused_element, unnecessary_cast

import '../domain_matching_auto_merging/domain_matching_auto_merging.dart';
import '../domain_matching_exporting_config/domain_matching_exporting_config.dart';
import '../domain_matching_job_schedule/domain_matching_job_schedule.dart';

class DomainMatching {
  /// A block that specifies the configuration about the auto-merging process. Documented below.
  final DomainMatchingAutoMerging? autoMerging;

  /// The flag that enables the matching process of duplicate profiles.
  final bool enabled;

  /// A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  final DomainMatchingExportingConfig? exportingConfig;

  /// A block that specifies the day and time when you want to start the Identity Resolution Job every week. Documented below.
  final DomainMatchingJobSchedule? jobSchedule;

  DomainMatching({
    this.autoMerging,
    required this.enabled,
    this.exportingConfig,
    this.jobSchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoMergingValue = autoMerging;
    if (autoMergingValue != null) {
      map['autoMerging'] = autoMergingValue.toMap();
    }
    map['enabled'] = enabled;
    final exportingConfigValue = exportingConfig;
    if (exportingConfigValue != null) {
      map['exportingConfig'] = exportingConfigValue.toMap();
    }
    final jobScheduleValue = jobSchedule;
    if (jobScheduleValue != null) {
      map['jobSchedule'] = jobScheduleValue.toMap();
    }
    return map;
  }

  factory DomainMatching.fromMap(Map<String, dynamic> map) {
    return DomainMatching(
      autoMerging: map['autoMerging'] == null
          ? null
          : DomainMatchingAutoMerging.fromMap(
              (map['autoMerging'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      exportingConfig: map['exportingConfig'] == null
          ? null
          : DomainMatchingExportingConfig.fromMap(
              (map['exportingConfig'] as Map).cast<String, dynamic>()),
      jobSchedule: map['jobSchedule'] == null
          ? null
          : DomainMatchingJobSchedule.fromMap(
              (map['jobSchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
