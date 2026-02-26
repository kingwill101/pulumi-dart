// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_accelerator_config.dart';

/// Defines the configuration to be used for creating workers in the worker pool.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig {
  /// The accelerator card attached to each VM.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig?
      accelerator;

  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/
  final String diskSizeGb;

  /// Disk Type to use for the worker. See [Storage options](https://cloud.google.com/compute/docs/disks/#introduction). Currently only `pd-standard` and `pd-ssd` are supported.
  final String diskType;

  /// Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
  final Map<String, String>? labels;

  /// Machine type of the worker, such as `e2-standard-2`. See https://cloud.google.com/compute/docs/machine-types for a list of supported machine types. Note that `f1-micro` and `g1-small` are not yet supported.
  final String machineType;

  /// The maximum number of actions a worker can execute concurrently.
  final String? maxConcurrentActions;

  /// Minimum CPU platform to use when creating the worker. See [CPU Platforms](https://cloud.google.com/compute/docs/cpu-platforms).
  final String? minCpuPlatform;

  /// Determines the type of network access granted to workers. Possible values: - "public": Workers can connect to the public internet. - "private": Workers can only connect to Google APIs and services. - "restricted-private": Workers can only connect to Google APIs that are reachable through `restricted.googleapis.com` (`199.36.153.4/30`).
  final String? networkAccess;

  /// Determines whether the worker is reserved (equivalent to a Compute Engine on-demand VM and therefore won't be preempted). See [Preemptible VMs](https://cloud.google.com/preemptible-vms/) for more details.
  final bool? reserved;

  /// The node type name to be used for sole-tenant nodes.
  final String? soleTenantNodeType;

  /// The name of the image used by each VM.
  final String? vmImage;

  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig({
    this.accelerator,
    required this.diskSizeGb,
    required this.diskType,
    this.labels,
    required this.machineType,
    this.maxConcurrentActions,
    this.minCpuPlatform,
    this.networkAccess,
    this.reserved,
    this.soleTenantNodeType,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorValue = accelerator;
    if (acceleratorValue != null) {
      map['accelerator'] = acceleratorValue.toMap();
    }
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['machineType'] = machineType;
    final maxConcurrentActionsValue = maxConcurrentActions;
    if (maxConcurrentActionsValue != null) {
      map['maxConcurrentActions'] = maxConcurrentActionsValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final networkAccessValue = networkAccess;
    if (networkAccessValue != null) {
      map['networkAccess'] = networkAccessValue;
    }
    final reservedValue = reserved;
    if (reservedValue != null) {
      map['reserved'] = reservedValue;
    }
    final soleTenantNodeTypeValue = soleTenantNodeType;
    if (soleTenantNodeTypeValue != null) {
      map['soleTenantNodeType'] = soleTenantNodeTypeValue;
    }
    final vmImageValue = vmImage;
    if (vmImageValue != null) {
      map['vmImage'] = vmImageValue;
    }
    return map;
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
      accelerator: map['accelerator'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      maxConcurrentActions: map['maxConcurrentActions'] == null
          ? null
          : map['maxConcurrentActions'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      networkAccess:
          map['networkAccess'] == null ? null : map['networkAccess'] as String,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
      soleTenantNodeType: map['soleTenantNodeType'] == null
          ? null
          : map['soleTenantNodeType'] as String,
      vmImage: map['vmImage'] == null ? null : map['vmImage'] as String,
    );
  }
}
