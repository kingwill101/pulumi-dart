// ignore_for_file: unused_element, unnecessary_cast


class GetResourcePolicyWorkloadPolicy {
  /// The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if max topology distance is set.
  final String acceleratorTopology;
  /// The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if accelerator topology is set. Possible values: ["BLOCK", "CLUSTER", "SUBBLOCK"]
  final String maxTopologyDistance;
  /// The type of workload policy. Possible values: ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
  final String type;

  /// Creates a new [GetResourcePolicyWorkloadPolicy].
  /// [acceleratorTopology] The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [maxTopologyDistance] The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [type] The type of workload policy. Possible values: ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
  GetResourcePolicyWorkloadPolicy({
    required this.acceleratorTopology,
    required this.maxTopologyDistance,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTopology': acceleratorTopology,
      'maxTopologyDistance': maxTopologyDistance,
      'type': type,
    };
  }

  factory GetResourcePolicyWorkloadPolicy.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyWorkloadPolicy(
      acceleratorTopology: map['acceleratorTopology'] as String,
      maxTopologyDistance: map['maxTopologyDistance'] as String,
      type: map['type'] as String,
    );
  }
}

