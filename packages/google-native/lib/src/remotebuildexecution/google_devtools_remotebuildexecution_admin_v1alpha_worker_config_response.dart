// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_accelerator_config_response.dart';

/// Defines the configuration to be used for creating workers in the worker pool.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse {
  /// The accelerator card attached to each VM.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfigResponse
  accelerator;

  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/
  final String diskSizeGb;

  /// Disk Type to use for the worker. See [Storage options](https://cloud.google.com/compute/docs/disks/#introduction). Currently only `pd-standard` and `pd-ssd` are supported.
  final String diskType;

  /// Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
  final Map<String, String> labels;

  /// Machine type of the worker, such as `e2-standard-2`. See https://cloud.google.com/compute/docs/machine-types for a list of supported machine types. Note that `f1-micro` and `g1-small` are not yet supported.
  final String machineType;

  /// The maximum number of actions a worker can execute concurrently.
  final String maxConcurrentActions;

  /// Minimum CPU platform to use when creating the worker. See [CPU Platforms](https://cloud.google.com/compute/docs/cpu-platforms).
  final String minCpuPlatform;

  /// Determines the type of network access granted to workers. Possible values: - "public": Workers can connect to the public internet. - "private": Workers can only connect to Google APIs and services. - "restricted-private": Workers can only connect to Google APIs that are reachable through `restricted.googleapis.com` (`199.36.153.4/30`).
  final String networkAccess;

  /// Determines whether the worker is reserved (equivalent to a Compute Engine on-demand VM and therefore won't be preempted). See [Preemptible VMs](https://cloud.google.com/preemptible-vms/) for more details.
  final bool reserved;

  /// The node type name to be used for sole-tenant nodes.
  final String soleTenantNodeType;

  /// The name of the image used by each VM.
  final String vmImage;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse].
  /// [accelerator] The accelerator card attached to each VM.
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/
  /// [diskType] Disk Type to use for the worker. See [Storage options](https://cloud.google.com/compute/docs/disks/#introduction). Currently only `pd-standard` and `pd-ssd` are supported.
  /// [labels] Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
  /// [machineType] Machine type of the worker, such as `e2-standard-2`. See https://cloud.google.com/compute/docs/machine-types for a list of supported machine types. Note that `f1-micro` and `g1-small` are not yet supported.
  /// [maxConcurrentActions] The maximum number of actions a worker can execute concurrently.
  /// [minCpuPlatform] Minimum CPU platform to use when creating the worker. See [CPU Platforms](https://cloud.google.com/compute/docs/cpu-platforms).
  /// [networkAccess] Determines the type of network access granted to workers. Possible values: - "public": Workers can connect to the public internet. - "private": Workers can only connect to Google APIs and services. - "restricted-private": Workers can only connect to Google APIs that are reachable through `restricted.googleapis.com` (`199.36.153.4/30`).
  /// [reserved] Determines whether the worker is reserved (equivalent to a Compute Engine on-demand VM and therefore won't be preempted). See [Preemptible VMs](https://cloud.google.com/preemptible-vms/) for more details.
  /// [soleTenantNodeType] The node type name to be used for sole-tenant nodes.
  /// [vmImage] The name of the image used by each VM.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse({
    required this.accelerator,
    required this.diskSizeGb,
    required this.diskType,
    required this.labels,
    required this.machineType,
    required this.maxConcurrentActions,
    required this.minCpuPlatform,
    required this.networkAccess,
    required this.reserved,
    required this.soleTenantNodeType,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': accelerator.toMap(),
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'labels': labels,
      'machineType': machineType,
      'maxConcurrentActions': maxConcurrentActions,
      'minCpuPlatform': minCpuPlatform,
      'networkAccess': networkAccess,
      'reserved': reserved,
      'soleTenantNodeType': soleTenantNodeType,
      'vmImage': vmImage,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse(
      accelerator:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfigResponse.fromMap(
            (map['accelerator'] as Map).cast<String, dynamic>(),
          ),
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      maxConcurrentActions: map['maxConcurrentActions'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
      networkAccess: map['networkAccess'] as String,
      reserved: map['reserved'] as bool,
      soleTenantNodeType: map['soleTenantNodeType'] as String,
      vmImage: map['vmImage'] as String,
    );
  }
}
