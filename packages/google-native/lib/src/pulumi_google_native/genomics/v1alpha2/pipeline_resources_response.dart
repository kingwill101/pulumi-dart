// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'disk_response3.dart';

/// The system resources for the pipeline run.
class PipelineResourcesResponse {
  /// Optional. The number of accelerators of the specified type to attach. By specifying this parameter, you will download and install the following third-party software onto your managed Compute Engine instances: NVIDIA® Tesla® drivers and NVIDIA® CUDA toolkit.
  final String acceleratorCount;

  /// Optional. The Compute Engine defined accelerator type. By specifying this parameter, you will download and install the following third-party software onto your managed Compute Engine instances: NVIDIA® Tesla® drivers and NVIDIA® CUDA toolkit. Please see https://cloud.google.com/compute/docs/gpus/ for a list of available accelerator types.
  final String acceleratorType;

  /// The size of the boot disk. Defaults to 10 (GB).
  final int bootDiskSizeGb;

  /// Disks to attach.
  final List<DiskResponse3> disks;

  /// The minimum number of cores to use. Defaults to 1.
  final int minimumCpuCores;

  /// The minimum amount of RAM to use. Defaults to 3.75 (GB)
  final double minimumRamGb;

  /// Whether to assign an external IP to the instance. This is an experimental feature that may go away. Defaults to false. Corresponds to `--no_address` flag for [gcloud compute instances create] (https://cloud.google.com/sdk/gcloud/reference/compute/instances/create). In order to use this, must be true for both create time and run time. Cannot be true at run time if false at create time. If you need to ssh into a private IP VM for debugging, you can ssh to a public VM and then ssh into the private VM's Internal IP. If noAddress is set, this pipeline run may only load docker images from Google Container Registry and not Docker Hub. Before using this, you must [configure access to Google services from internal IPs](https://cloud.google.com/compute/docs/configure-private-google-access#configuring_access_to_google_services_from_internal_ips).
  final bool noAddress;

  /// Whether to use preemptible VMs. Defaults to `false`. In order to use this, must be true for both create time and run time. Cannot be true at run time if false at create time.
  final bool preemptible;

  /// List of Google Compute Engine availability zones to which resource creation will restricted. If empty, any zone may be chosen.
  final List<String> zones;

  PipelineResourcesResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.bootDiskSizeGb,
    required this.disks,
    required this.minimumCpuCores,
    required this.minimumRamGb,
    required this.noAddress,
    required this.preemptible,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    map['bootDiskSizeGb'] = bootDiskSizeGb;
    map['disks'] = Input.encodeList<DiskResponse3, Map<String, dynamic>>(
        disks, (value) => value.toMap());
    map['minimumCpuCores'] = minimumCpuCores;
    map['minimumRamGb'] = minimumRamGb;
    map['noAddress'] = noAddress;
    map['preemptible'] = preemptible;
    map['zones'] = zones;
    return map;
  }

  factory PipelineResourcesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineResourcesResponse(
      acceleratorCount: map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] as String,
      bootDiskSizeGb: map['bootDiskSizeGb'] as int,
      disks: Input.decodeList<DiskResponse3>(
          map['disks'],
          (value) =>
              DiskResponse3.fromMap((value as Map).cast<String, dynamic>())),
      minimumCpuCores: map['minimumCpuCores'] as int,
      minimumRamGb: map['minimumRamGb'] as double,
      noAddress: map['noAddress'] as bool,
      preemptible: map['preemptible'] as bool,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
