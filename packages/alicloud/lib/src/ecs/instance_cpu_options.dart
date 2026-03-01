// ignore_for_file: unused_element, unnecessary_cast


class InstanceCpuOptions {
  /// The maximum number of partitions in the storage set.
  final int? coreCount;
  /// The number of threads per CPU core.
  final int? threadsPerCore;
  /// The CPU topology type of the instance. Valid values: `ContinuousCoreToHTMapping`, `DiscreteCoreToHTMapping`.
  final String? topologyType;

  /// Creates a new [InstanceCpuOptions].
  /// [coreCount] The maximum number of partitions in the storage set.
  /// [threadsPerCore] The number of threads per CPU core.
  /// [topologyType] The CPU topology type of the instance. Valid values: `ContinuousCoreToHTMapping`, `DiscreteCoreToHTMapping`.
  InstanceCpuOptions({
    this.coreCount,
    this.threadsPerCore,
    this.topologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'threadsPerCore': ?threadsPerCore,
      'topologyType': ?topologyType,
    };
  }

  factory InstanceCpuOptions.fromMap(Map<String, dynamic> map) {
    return InstanceCpuOptions(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as int,
      threadsPerCore: map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
      topologyType: map['topologyType'] == null ? null : map['topologyType'] as String,
    );
  }
}

