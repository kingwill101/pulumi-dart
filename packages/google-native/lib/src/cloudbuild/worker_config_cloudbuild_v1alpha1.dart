// ignore_for_file: unused_element, unnecessary_cast

import 'network.dart';

/// WorkerConfig defines the configuration to be used for a creating workers in the pool.
class WorkerConfigCloudbuildV1alpha1 {
  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size. `disk_size` is overridden if you specify a different disk size in `build_options`. In this case, a VM with a disk size specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#buildoptions
  final String? diskSizeGb;
  /// Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool. `machine_type` is overridden if you specify a different machine type in `build_options`. In this case, the VM specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/speeding-up-builds#using_custom_virtual_machine_sizes
  final String? machineType;
  /// The network definition used to create the worker. If this section is left empty, the workers will be created in WorkerPool.project_id on the default network.
  final Network? network;
  /// The tag applied to the worker, and the same tag used by the firewall rule. It is used to identify the Cloud Build workers among other VMs. The default value for tag is `worker`.
  final String? tag;

  /// Creates a new [WorkerConfigCloudbuildV1alpha1].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size. `disk_size` is overridden if you specify a different disk size in `build_options`. In this case, a VM with a disk size specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#buildoptions
  /// [machineType] Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool. `machine_type` is overridden if you specify a different machine type in `build_options`. In this case, the VM specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/speeding-up-builds#using_custom_virtual_machine_sizes
  /// [network] The network definition used to create the worker. If this section is left empty, the workers will be created in WorkerPool.project_id on the default network.
  /// [tag] The tag applied to the worker, and the same tag used by the firewall rule. It is used to identify the Cloud Build workers among other VMs. The default value for tag is `worker`.
  WorkerConfigCloudbuildV1alpha1({
    this.diskSizeGb,
    this.machineType,
    this.network,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'machineType': ?machineType,
      'network': ?network == null ? null : network!.toMap(),
      'tag': ?tag,
    };
  }

  factory WorkerConfigCloudbuildV1alpha1.fromMap(Map<String, dynamic> map) {
    return WorkerConfigCloudbuildV1alpha1(
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      network: map['network'] == null ? null : Network.fromMap((map['network'] as Map).cast<String, dynamic>()),
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

