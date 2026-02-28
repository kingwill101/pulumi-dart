// ignore_for_file: unused_element, unnecessary_cast

/// The user preferences relating to Google Cloud VMware Engine target platform.
class VmwareEnginePreferencesResponse {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final String commitmentPlan;

  /// CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  final double cpuOvercommitRatio;

  /// Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  final double memoryOvercommitRatio;

  /// The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  final double storageDeduplicationCompressionRatio;

  /// Creates a new [VmwareEnginePreferencesResponse].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  /// [memoryOvercommitRatio] Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  /// [storageDeduplicationCompressionRatio] The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  VmwareEnginePreferencesResponse({
    required this.commitmentPlan,
    required this.cpuOvercommitRatio,
    required this.memoryOvercommitRatio,
    required this.storageDeduplicationCompressionRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitmentPlan'] = commitmentPlan;
    map['cpuOvercommitRatio'] = cpuOvercommitRatio;
    map['memoryOvercommitRatio'] = memoryOvercommitRatio;
    map['storageDeduplicationCompressionRatio'] =
        storageDeduplicationCompressionRatio;
    return map;
  }

  factory VmwareEnginePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return VmwareEnginePreferencesResponse(
      commitmentPlan: map['commitmentPlan'] as String,
      cpuOvercommitRatio: map['cpuOvercommitRatio'] as double,
      memoryOvercommitRatio: map['memoryOvercommitRatio'] as double,
      storageDeduplicationCompressionRatio:
          map['storageDeduplicationCompressionRatio'] as double,
    );
  }
}
