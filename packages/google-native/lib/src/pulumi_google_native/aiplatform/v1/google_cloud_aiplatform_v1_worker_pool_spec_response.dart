// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_container_spec_response.dart';
import 'google_cloud_aiplatform_v1_disk_spec_response.dart';
import 'google_cloud_aiplatform_v1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1_nfs_mount_response.dart';
import 'google_cloud_aiplatform_v1_python_package_spec_response.dart';

/// Represents the spec of a worker pool in a job.
class GoogleCloudAiplatformV1WorkerPoolSpecResponse {
  /// The custom container task.
  final GoogleCloudAiplatformV1ContainerSpecResponse containerSpec;

  /// Disk spec.
  final GoogleCloudAiplatformV1DiskSpecResponse diskSpec;

  /// Optional. Immutable. The specification of a single machine.
  final GoogleCloudAiplatformV1MachineSpecResponse machineSpec;

  /// Optional. List of NFS mount spec.
  final List<GoogleCloudAiplatformV1NfsMountResponse> nfsMounts;

  /// The Python packaged task.
  final GoogleCloudAiplatformV1PythonPackageSpecResponse pythonPackageSpec;

  /// Optional. The number of worker replicas to use for this worker pool.
  final String replicaCount;

  GoogleCloudAiplatformV1WorkerPoolSpecResponse({
    required this.containerSpec,
    required this.diskSpec,
    required this.machineSpec,
    required this.nfsMounts,
    required this.pythonPackageSpec,
    required this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerSpec'] = containerSpec.toMap();
    map['diskSpec'] = diskSpec.toMap();
    map['machineSpec'] = machineSpec.toMap();
    map['nfsMounts'] = Input.encodeList<GoogleCloudAiplatformV1NfsMountResponse,
        Map<String, dynamic>>(nfsMounts, (value) => value.toMap());
    map['pythonPackageSpec'] = pythonPackageSpec.toMap();
    map['replicaCount'] = replicaCount;
    return map;
  }

  factory GoogleCloudAiplatformV1WorkerPoolSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1WorkerPoolSpecResponse(
      containerSpec: GoogleCloudAiplatformV1ContainerSpecResponse.fromMap(
          (map['containerSpec'] as Map).cast<String, dynamic>()),
      diskSpec: GoogleCloudAiplatformV1DiskSpecResponse.fromMap(
          (map['diskSpec'] as Map).cast<String, dynamic>()),
      machineSpec: GoogleCloudAiplatformV1MachineSpecResponse.fromMap(
          (map['machineSpec'] as Map).cast<String, dynamic>()),
      nfsMounts: Input.decodeList<GoogleCloudAiplatformV1NfsMountResponse>(
          map['nfsMounts'],
          (value) => GoogleCloudAiplatformV1NfsMountResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      pythonPackageSpec:
          GoogleCloudAiplatformV1PythonPackageSpecResponse.fromMap(
              (map['pythonPackageSpec'] as Map).cast<String, dynamic>()),
      replicaCount: map['replicaCount'] as String,
    );
  }
}
