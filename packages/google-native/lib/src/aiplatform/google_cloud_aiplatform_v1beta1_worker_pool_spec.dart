// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GoogleCloudAiplatformV1beta1WorkerPoolSpec].
  /// [containerSpec] The custom container task.
  /// [diskSpec] Disk spec.
  /// [machineSpec] Optional. Immutable. The specification of a single machine.
  /// [nfsMounts] Optional. List of NFS mount spec.
  /// [pythonPackageSpec] The Python packaged task.
  /// [replicaCount] Optional. The number of worker replicas to use for this worker pool.
  GoogleCloudAiplatformV1beta1WorkerPoolSpec({
    this.containerSpec,
    this.diskSpec,
    this.machineSpec,
    this.nfsMounts,
    this.pythonPackageSpec,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpec': ?containerSpec == null ? null : containerSpec!.toMap(),
      'diskSpec': ?diskSpec == null ? null : diskSpec!.toMap(),
      'machineSpec': ?machineSpec == null ? null : machineSpec!.toMap(),
      'nfsMounts': ?nfsMounts == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudAiplatformV1beta1NfsMount,
              Map<String, dynamic>
            >(nfsMounts!, (value) => value.toMap()),
      'pythonPackageSpec': ?pythonPackageSpec == null
          ? null
          : pythonPackageSpec!.toMap(),
      'replicaCount': ?replicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1WorkerPoolSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1WorkerPoolSpec(
      containerSpec: map['containerSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ContainerSpec.fromMap(
              (map['containerSpec'] as Map).cast<String, dynamic>(),
            ),
      diskSpec: map['diskSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1DiskSpec.fromMap(
              (map['diskSpec'] as Map).cast<String, dynamic>(),
            ),
      machineSpec: map['machineSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1MachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>(),
            ),
      nfsMounts: map['nfsMounts'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1NfsMount>(
              map['nfsMounts'],
              (value) => GoogleCloudAiplatformV1beta1NfsMount.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      pythonPackageSpec: map['pythonPackageSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PythonPackageSpec.fromMap(
              (map['pythonPackageSpec'] as Map).cast<String, dynamic>(),
            ),
      replicaCount: map['replicaCount'] == null
          ? null
          : map['replicaCount'] as String,
    );
  }
}
