// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_engine_preferences_commitment_plan_migrationcenter_v1alpha1.dart';

/// The user preferences relating to Google Cloud VMware Engine target platform.
class VmwareEnginePreferencesMigrationcenterV1alpha1 {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1?
  commitmentPlan;

  /// CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  final double? cpuOvercommitRatio;

  /// Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  final double? memoryOvercommitRatio;

  /// The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  final double? storageDeduplicationCompressionRatio;

  /// Creates a new [VmwareEnginePreferencesMigrationcenterV1alpha1].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  /// [memoryOvercommitRatio] Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  /// [storageDeduplicationCompressionRatio] The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  VmwareEnginePreferencesMigrationcenterV1alpha1({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.memoryOvercommitRatio,
    this.storageDeduplicationCompressionRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan == null ? null : commitmentPlan!.value,
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'memoryOvercommitRatio': ?memoryOvercommitRatio,
      'storageDeduplicationCompressionRatio':
          ?storageDeduplicationCompressionRatio,
    };
  }

  factory VmwareEnginePreferencesMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareEnginePreferencesMigrationcenterV1alpha1(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1.fromValue(
              map['commitmentPlan'] as String,
            ),
      cpuOvercommitRatio: map['cpuOvercommitRatio'] == null
          ? null
          : map['cpuOvercommitRatio'] as double,
      memoryOvercommitRatio: map['memoryOvercommitRatio'] == null
          ? null
          : map['memoryOvercommitRatio'] as double,
      storageDeduplicationCompressionRatio:
          map['storageDeduplicationCompressionRatio'] == null
          ? null
          : map['storageDeduplicationCompressionRatio'] as double,
    );
  }
}
