// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_engine_preferences_commitment_plan.dart';

/// The user preferences relating to Google Cloud VMware Engine target platform.
class VmwareEnginePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final VmwareEnginePreferencesCommitmentPlan? commitmentPlan;

  /// CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  final double? cpuOvercommitRatio;

  /// Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  final double? memoryOvercommitRatio;

  /// The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  final double? storageDeduplicationCompressionRatio;

  VmwareEnginePreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.memoryOvercommitRatio,
    this.storageDeduplicationCompressionRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitmentPlanValue = commitmentPlan;
    if (commitmentPlanValue != null) {
      map['commitmentPlan'] = commitmentPlanValue.value;
    }
    final cpuOvercommitRatioValue = cpuOvercommitRatio;
    if (cpuOvercommitRatioValue != null) {
      map['cpuOvercommitRatio'] = cpuOvercommitRatioValue;
    }
    final memoryOvercommitRatioValue = memoryOvercommitRatio;
    if (memoryOvercommitRatioValue != null) {
      map['memoryOvercommitRatio'] = memoryOvercommitRatioValue;
    }
    final storageDeduplicationCompressionRatioValue =
        storageDeduplicationCompressionRatio;
    if (storageDeduplicationCompressionRatioValue != null) {
      map['storageDeduplicationCompressionRatio'] =
          storageDeduplicationCompressionRatioValue;
    }
    return map;
  }

  factory VmwareEnginePreferences.fromMap(Map<String, dynamic> map) {
    return VmwareEnginePreferences(
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : VmwareEnginePreferencesCommitmentPlan.fromValue(
              map['commitmentPlan'] as String),
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
