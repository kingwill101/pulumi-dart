// ignore_for_file: unused_element, unnecessary_cast

import 'domain_matching_auto_merging.dart';
import 'domain_matching_exporting_config.dart';
import 'domain_matching_job_schedule.dart';

class DomainMatching {
  /// A block that specifies the configuration about the auto-merging process. Documented below.
  final DomainMatchingAutoMerging? autoMerging;

  /// The flag that enables the matching process of duplicate profiles.
  final bool enabled;

  /// A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  final DomainMatchingExportingConfig? exportingConfig;

  /// A block that specifies the day and time when you want to start the Identity Resolution Job every week. Documented below.
  final DomainMatchingJobSchedule? jobSchedule;

  /// Creates a new [DomainMatching].
  /// [autoMerging] A block that specifies the configuration about the auto-merging process. Documented below.
  /// [enabled] The flag that enables the matching process of duplicate profiles.
  /// [exportingConfig] A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  /// [jobSchedule] A block that specifies the day and time when you want to start the Identity Resolution Job every week. Documented below.
  DomainMatching({
    this.autoMerging,
    required this.enabled,
    this.exportingConfig,
    this.jobSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoMerging': ?autoMerging == null ? null : autoMerging!.toMap(),
      'enabled': enabled,
      'exportingConfig': ?exportingConfig == null
          ? null
          : exportingConfig!.toMap(),
      'jobSchedule': ?jobSchedule == null ? null : jobSchedule!.toMap(),
    };
  }

  factory DomainMatching.fromMap(Map<String, dynamic> map) {
    return DomainMatching(
      autoMerging: map['autoMerging'] == null
          ? null
          : DomainMatchingAutoMerging.fromMap(
              (map['autoMerging'] as Map).cast<String, dynamic>(),
            ),
      enabled: map['enabled'] as bool,
      exportingConfig: map['exportingConfig'] == null
          ? null
          : DomainMatchingExportingConfig.fromMap(
              (map['exportingConfig'] as Map).cast<String, dynamic>(),
            ),
      jobSchedule: map['jobSchedule'] == null
          ? null
          : DomainMatchingJobSchedule.fromMap(
              (map['jobSchedule'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
