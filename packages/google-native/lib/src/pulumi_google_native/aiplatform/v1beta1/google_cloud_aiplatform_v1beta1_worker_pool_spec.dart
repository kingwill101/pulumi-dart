// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_container_spec.dart';
import 'google_cloud_aiplatform_v1beta1_disk_spec.dart';
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_nfs_mount.dart';
import 'google_cloud_aiplatform_v1beta1_python_package_spec.dart';

/// Represents the spec of a worker pool in a job.
class GoogleCloudAiplatformV1beta1WorkerPoolSpec {
  /// The custom container task.
  final GoogleCloudAiplatformV1beta1ContainerSpec? containerSpec;

  /// Disk spec.
  final GoogleCloudAiplatformV1beta1DiskSpec? diskSpec;

  /// Optional. Immutable. The specification of a single machine.
  final GoogleCloudAiplatformV1beta1MachineSpec? machineSpec;

  /// Optional. List of NFS mount spec.
  final List<GoogleCloudAiplatformV1beta1NfsMount>? nfsMounts;

  /// The Python packaged task.
  final GoogleCloudAiplatformV1beta1PythonPackageSpec? pythonPackageSpec;

  /// Optional. The number of worker replicas to use for this worker pool.
  final String? replicaCount;

  GoogleCloudAiplatformV1beta1WorkerPoolSpec({
    this.containerSpec,
    this.diskSpec,
    this.machineSpec,
    this.nfsMounts,
    this.pythonPackageSpec,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerSpecValue = containerSpec;
    if (containerSpecValue != null) {
      map['containerSpec'] = containerSpecValue.toMap();
    }
    final diskSpecValue = diskSpec;
    if (diskSpecValue != null) {
      map['diskSpec'] = diskSpecValue.toMap();
    }
    final machineSpecValue = machineSpec;
    if (machineSpecValue != null) {
      map['machineSpec'] = machineSpecValue.toMap();
    }
    final nfsMountsValue = nfsMounts;
    if (nfsMountsValue != null) {
      map['nfsMounts'] = Input.encodeList<GoogleCloudAiplatformV1beta1NfsMount,
          Map<String, dynamic>>(nfsMountsValue, (value) => value.toMap());
    }
    final pythonPackageSpecValue = pythonPackageSpec;
    if (pythonPackageSpecValue != null) {
      map['pythonPackageSpec'] = pythonPackageSpecValue.toMap();
    }
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1WorkerPoolSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1WorkerPoolSpec(
      containerSpec: map['containerSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ContainerSpec.fromMap(
              (map['containerSpec'] as Map).cast<String, dynamic>()),
      diskSpec: map['diskSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1DiskSpec.fromMap(
              (map['diskSpec'] as Map).cast<String, dynamic>()),
      machineSpec: map['machineSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1MachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>()),
      nfsMounts: map['nfsMounts'] == null
          ? null
          : Input.decodeList<GoogleCloudAiplatformV1beta1NfsMount>(
              map['nfsMounts'],
              (value) => GoogleCloudAiplatformV1beta1NfsMount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pythonPackageSpec: map['pythonPackageSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PythonPackageSpec.fromMap(
              (map['pythonPackageSpec'] as Map).cast<String, dynamic>()),
      replicaCount:
          map['replicaCount'] == null ? null : map['replicaCount'] as String,
    );
  }
}
