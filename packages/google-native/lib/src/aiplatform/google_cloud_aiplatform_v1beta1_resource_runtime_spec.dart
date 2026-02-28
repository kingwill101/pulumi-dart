// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_ray_spec.dart';
import 'google_cloud_aiplatform_v1beta1_service_account_spec.dart';

/// Configuration for the runtime on a PersistentResource instance, including but not limited to: * Service accounts used to run the workloads. * Whether to make it a dedicated Ray Cluster.
class GoogleCloudAiplatformV1beta1ResourceRuntimeSpec {
  /// Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  final GoogleCloudAiplatformV1beta1RaySpec? raySpec;

  /// Optional. Configure the use of workload identity on the PersistentResource
  final GoogleCloudAiplatformV1beta1ServiceAccountSpec? serviceAccountSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourceRuntimeSpec].
  /// [raySpec] Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  /// [serviceAccountSpec] Optional. Configure the use of workload identity on the PersistentResource
  GoogleCloudAiplatformV1beta1ResourceRuntimeSpec({
    this.raySpec,
    this.serviceAccountSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final raySpecValue = raySpec;
    if (raySpecValue != null) {
      map['raySpec'] = raySpecValue.toMap();
    }
    final serviceAccountSpecValue = serviceAccountSpec;
    if (serviceAccountSpecValue != null) {
      map['serviceAccountSpec'] = serviceAccountSpecValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ResourceRuntimeSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourceRuntimeSpec(
      raySpec: map['raySpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1RaySpec.fromMap(
              (map['raySpec'] as Map).cast<String, dynamic>()),
      serviceAccountSpec: map['serviceAccountSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ServiceAccountSpec.fromMap(
              (map['serviceAccountSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
