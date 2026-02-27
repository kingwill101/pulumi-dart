// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_genomics_v1alpha2.dart';

/// The system resources for the pipeline run.
class PipelineResources {
  /// Optional. The number of accelerators of the specified type to attach. By specifying this parameter, you will download and install the following third-party software onto your managed Compute Engine instances: NVIDIA® Tesla® drivers and NVIDIA® CUDA toolkit.
  final String? acceleratorCount;

  /// Optional. The Compute Engine defined accelerator type. By specifying this parameter, you will download and install the following third-party software onto your managed Compute Engine instances: NVIDIA® Tesla® drivers and NVIDIA® CUDA toolkit. Please see https://cloud.google.com/compute/docs/gpus/ for a list of available accelerator types.
  final String? acceleratorType;

  /// The size of the boot disk. Defaults to 10 (GB).
  final int? bootDiskSizeGb;

  /// Disks to attach.
  final List<DiskGenomicsV1alpha2>? disks;

  /// The minimum number of cores to use. Defaults to 1.
  final int? minimumCpuCores;

  /// The minimum amount of RAM to use. Defaults to 3.75 (GB)
  final double? minimumRamGb;

  /// Whether to assign an external IP to the instance. This is an experimental feature that may go away. Defaults to false. Corresponds to `--no_address` flag for [gcloud compute instances create] (https://cloud.google.com/sdk/gcloud/reference/compute/instances/create). In order to use this, must be true for both create time and run time. Cannot be true at run time if false at create time. If you need to ssh into a private IP VM for debugging, you can ssh to a public VM and then ssh into the private VM's Internal IP. If noAddress is set, this pipeline run may only load docker images from Google Container Registry and not Docker Hub. Before using this, you must [configure access to Google services from internal IPs](https://cloud.google.com/compute/docs/configure-private-google-access#configuring_access_to_google_services_from_internal_ips).
  final bool? noAddress;

  /// Whether to use preemptible VMs. Defaults to `false`. In order to use this, must be true for both create time and run time. Cannot be true at run time if false at create time.
  final bool? preemptible;

  /// List of Google Compute Engine availability zones to which resource creation will restricted. If empty, any zone may be chosen.
  final List<String>? zones;

  PipelineResources({
    this.acceleratorCount,
    this.acceleratorType,
    this.bootDiskSizeGb,
    this.disks,
    this.minimumCpuCores,
    this.minimumRamGb,
    this.noAddress,
    this.preemptible,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] =
          pulumi.Input.encodeList<DiskGenomicsV1alpha2, Map<String, dynamic>>(
              disksValue, (value) => value.toMap());
    }
    final minimumCpuCoresValue = minimumCpuCores;
    if (minimumCpuCoresValue != null) {
      map['minimumCpuCores'] = minimumCpuCoresValue;
    }
    final minimumRamGbValue = minimumRamGb;
    if (minimumRamGbValue != null) {
      map['minimumRamGb'] = minimumRamGbValue;
    }
    final noAddressValue = noAddress;
    if (noAddressValue != null) {
      map['noAddress'] = noAddressValue;
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory PipelineResources.fromMap(Map<String, dynamic> map) {
    return PipelineResources(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      disks: map['disks'] == null
          ? null
          : pulumi.Input.decodeList<DiskGenomicsV1alpha2>(
              map['disks'],
              (value) => DiskGenomicsV1alpha2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      minimumCpuCores:
          map['minimumCpuCores'] == null ? null : map['minimumCpuCores'] as int,
      minimumRamGb:
          map['minimumRamGb'] == null ? null : map['minimumRamGb'] as double,
      noAddress: map['noAddress'] == null ? null : map['noAddress'] as bool,
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      zones:
          map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}
