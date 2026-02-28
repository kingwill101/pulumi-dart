// ignore_for_file: unused_element, unnecessary_cast

/// Specification of a single machine.
class GoogleCloudAiplatformV1beta1MachineSpecResponse {
  /// The number of accelerators to attach to the machine.
  final int acceleratorCount;

  /// Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
  final String acceleratorType;

  /// Immutable. The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  final String machineType;

  /// Immutable. The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  final String tpuTopology;

  /// Creates a new [GoogleCloudAiplatformV1beta1MachineSpecResponse].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
  /// [machineType] Immutable. The type of the machine. See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types) See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types). For DeployedModel this field is optional, and the default value is `n1-standard-2`. For BatchPredictionJob or as part of WorkerPoolSpec this field is required.
  /// [tpuTopology] Immutable. The topology of the TPUs. Corresponds to the TPU topologies available from GKE. (Example: tpu_topology: "2x2x1").
  GoogleCloudAiplatformV1beta1MachineSpecResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.machineType,
    required this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    map['machineType'] = machineType;
    map['tpuTopology'] = tpuTopology;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1MachineSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1MachineSpecResponse(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] as String,
      machineType: map['machineType'] as String,
      tpuTopology: map['tpuTopology'] as String,
    );
  }
}
