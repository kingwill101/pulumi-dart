// ignore_for_file: unused_element, unnecessary_cast

import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_machine_spec_reservation_affinity.dart';

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec {
  /// The number of accelerators to attach to the machine.
  final int? acceleratorCount;
  /// Possible values:
  /// ACCELERATOR_TYPE_UNSPECIFIED
  /// NVIDIA_TESLA_K80
  /// NVIDIA_TESLA_P100
  /// NVIDIA_TESLA_V100
  /// NVIDIA_TESLA_P4
  /// NVIDIA_TESLA_T4
  /// NVIDIA_TESLA_A100
  /// NVIDIA_A100_80GB
  /// NVIDIA_L4
  /// NVIDIA_H100_80GB
  /// NVIDIA_H100_MEGA_80GB
  /// NVIDIA_H200_141GB
  /// NVIDIA_B200
  /// TPU_V2
  /// TPU_V3
  /// TPU_V4_POD
  /// TPU_V5_LITEPOD
  final String? acceleratorType;
  /// The type of the machine.
  /// See the [list of machine types supported for
  /// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
  /// See the [list of machine types supported for custom
  /// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
  /// For DeployedModel this field is optional, and the default
  /// value is `n1-standard-2`. For BatchPredictionJob or as part of
  /// WorkerPoolSpec this field is required.
  final String? machineType;
  /// The number of nodes per replica for multihost GPU deployments.
  final int? multihostGpuNodeCount;
  /// A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
  /// DeployedModel) to draw its Compute Engine resources from a Shared
  /// Reservation, or exclusively from on-demand capacity.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity? reservationAffinity;
  /// The topology of the TPUs. Corresponds to the TPU topologies available from
  /// GKE. (Example: tpu_topology: "2x2x1").
  final String? tpuTopology;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] Possible values:
  /// [machineType] The type of the machine.
  /// [multihostGpuNodeCount] The number of nodes per replica for multihost GPU deployments.
  /// [reservationAffinity] A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
  /// [tpuTopology] The topology of the TPUs. Corresponds to the TPU topologies available from
  AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.multihostGpuNodeCount,
    this.reservationAffinity,
    this.tpuTopology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'machineType': ?machineType,
      'multihostGpuNodeCount': ?multihostGpuNodeCount,
      'reservationAffinity': ?reservationAffinity == null ? null : reservationAffinity!.toMap(),
      'tpuTopology': ?tpuTopology,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec(
      acceleratorCount: map['acceleratorCount'] == null ? null : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      multihostGpuNodeCount: map['multihostGpuNodeCount'] == null ? null : map['multihostGpuNodeCount'] as int,
      reservationAffinity: map['reservationAffinity'] == null ? null : AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>()),
      tpuTopology: map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
    );
  }
}

