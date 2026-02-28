// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_disk_spec.dart';
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool_autoscaling_spec.dart';

/// Represents the spec of a group of resources of the same type, for example machine type, disk, and accelerators, in a PersistentResource.
class GoogleCloudAiplatformV1beta1ResourcePool {
  /// Optional. Optional spec to configure GKE autoscaling
  final GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec?
      autoscalingSpec;

  /// Optional. Disk spec for the machine in this node pool.
  final GoogleCloudAiplatformV1beta1DiskSpec? diskSpec;

  /// Immutable. The unique ID in a PersistentResource for referring to this resource pool. User can specify it if necessary. Otherwise, it's generated automatically.
  final String? id;

  /// Immutable. The specification of a single machine.
  final GoogleCloudAiplatformV1beta1MachineSpec machineSpec;

  /// Optional. The total number of machines to use for this resource pool.
  final String? replicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourcePool].
  /// [autoscalingSpec] Optional. Optional spec to configure GKE autoscaling
  /// [diskSpec] Optional. Disk spec for the machine in this node pool.
  /// [id] Immutable. The unique ID in a PersistentResource for referring to this resource pool. User can specify it if necessary. Otherwise, it's generated automatically.
  /// [machineSpec] Immutable. The specification of a single machine.
  /// [replicaCount] Optional. The total number of machines to use for this resource pool.
  GoogleCloudAiplatformV1beta1ResourcePool({
    this.autoscalingSpec,
    this.diskSpec,
    this.id,
    required this.machineSpec,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingSpecValue = autoscalingSpec;
    if (autoscalingSpecValue != null) {
      map['autoscalingSpec'] = autoscalingSpecValue.toMap();
    }
    final diskSpecValue = diskSpec;
    if (diskSpecValue != null) {
      map['diskSpec'] = diskSpecValue.toMap();
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['machineSpec'] = machineSpec.toMap();
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ResourcePool.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourcePool(
      autoscalingSpec: map['autoscalingSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec.fromMap(
              (map['autoscalingSpec'] as Map).cast<String, dynamic>()),
      diskSpec: map['diskSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1DiskSpec.fromMap(
              (map['diskSpec'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      machineSpec: GoogleCloudAiplatformV1beta1MachineSpec.fromMap(
          (map['machineSpec'] as Map).cast<String, dynamic>()),
      replicaCount:
          map['replicaCount'] == null ? null : map['replicaCount'] as String,
    );
  }
}
