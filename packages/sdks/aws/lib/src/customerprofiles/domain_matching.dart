// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_matching_auto_merging.dart';
import 'domain_matching_exporting_config.dart';
import 'domain_matching_job_schedule.dart';

class DomainMatching {
  /// A block that specifies the configuration about the auto-merging process. Documented below.
  final pulumi.Input<DomainMatchingAutoMerging>? autoMerging;
  /// The flag that enables the matching process of duplicate profiles.
  final pulumi.Input<bool> enabled;
  /// A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  final pulumi.Input<DomainMatchingExportingConfig>? exportingConfig;
  /// A block that specifies the day and time when you want to start the Identity Resolution Job every week. Documented below.
  final pulumi.Input<DomainMatchingJobSchedule>? jobSchedule;

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
      'autoMerging': ?pulumi.Input.mapOptionalInputValue<DomainMatchingAutoMerging, Map<String, dynamic>>(autoMerging, (value) => value.toMap()),
      'enabled': enabled,
      'exportingConfig': ?pulumi.Input.mapOptionalInputValue<DomainMatchingExportingConfig, Map<String, dynamic>>(exportingConfig, (value) => value.toMap()),
      'jobSchedule': ?pulumi.Input.mapOptionalInputValue<DomainMatchingJobSchedule, Map<String, dynamic>>(jobSchedule, (value) => value.toMap()),
    };
  }

  factory DomainMatching.fromMap(Map<String, dynamic> map) {
    return DomainMatching(
      autoMerging: map['autoMerging'] == null ? null : (DomainMatchingAutoMerging.fromMap((map['autoMerging'] as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
      exportingConfig: map['exportingConfig'] == null ? null : (DomainMatchingExportingConfig.fromMap((map['exportingConfig'] as Map).cast<String, dynamic>())).input(),
      jobSchedule: map['jobSchedule'] == null ? null : (DomainMatchingJobSchedule.fromMap((map['jobSchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

