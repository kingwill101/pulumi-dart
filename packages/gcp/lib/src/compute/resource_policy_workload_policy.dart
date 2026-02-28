// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyWorkloadPolicy {
  /// The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if max topology distance is set.
  final String? acceleratorTopology;

  /// The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if accelerator topology is set.
  /// Possible values are: `BLOCK`, `CLUSTER`, `SUBBLOCK`.
  final String? maxTopologyDistance;

  /// The type of workload policy.
  /// Possible values are: `HIGH_AVAILABILITY`, `HIGH_THROUGHPUT`.
  final String type;

  /// Creates a new [ResourcePolicyWorkloadPolicy].
  /// [acceleratorTopology] The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [maxTopologyDistance] The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [type] The type of workload policy.
  ResourcePolicyWorkloadPolicy({
    this.acceleratorTopology,
    this.maxTopologyDistance,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorTopologyValue = acceleratorTopology;
    if (acceleratorTopologyValue != null) {
      map['acceleratorTopology'] = acceleratorTopologyValue;
    }
    final maxTopologyDistanceValue = maxTopologyDistance;
    if (maxTopologyDistanceValue != null) {
      map['maxTopologyDistance'] = maxTopologyDistanceValue;
    }
    map['type'] = type;
    return map;
  }

  factory ResourcePolicyWorkloadPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWorkloadPolicy(
      acceleratorTopology: map['acceleratorTopology'] == null
          ? null
          : map['acceleratorTopology'] as String,
      maxTopologyDistance: map['maxTopologyDistance'] == null
          ? null
          : map['maxTopologyDistance'] as String,
      type: map['type'] as String,
    );
  }
}
