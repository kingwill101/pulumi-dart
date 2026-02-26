// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config_response8.dart';
import 'container_image_response.dart';
import 'disk_response4.dart';
import 'instance_migration_eligibility_response.dart';
import 'reservation_affinity_response8.dart';
import 'shielded_instance_config_response8.dart';
import 'upgrade_history_entry_response.dart';
import 'vm_image_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult18 {
  /// The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  final AcceleratorConfigResponse8 acceleratorConfig;

  /// Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  final String bootDiskSizeGb;

  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final String bootDiskType;

  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final bool canIpForward;

  /// Use a container image to start the notebook instance.
  final ContainerImageResponse containerImage;

  /// Instance creation time.
  final String createTime;

  /// Email address of entity that sent original CreateInstance request.
  final String creator;

  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final String customGpuDriverPath;

  /// Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  final String dataDiskSizeGb;

  /// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final String dataDiskType;

  /// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final String diskEncryption;

  /// Attached disks to notebook instance.
  final List<DiskResponse4> disks;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final bool installGpuDriver;

  /// Checks how feasible a migration from UmN to WbI is.
  final InstanceMigrationEligibilityResponse instanceMigrationEligibility;

  /// Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final List<String> instanceOwners;

  /// Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  final String kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final Map<String, String> labels;

  /// The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  final String machineType;

  /// Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  final Map<String, String> metadata;

  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  final bool migrated;

  /// The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final String name;

  /// The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final String network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final String nicType;

  /// If true, the notebook instance will not register with the proxy.
  final bool noProxyAccess;

  /// If true, no external IP will be assigned to this instance.
  final bool noPublicIp;

  /// Input only. If true, the data disk will not be auto deleted when deleting the instance.
  final bool noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final String postStartupScript;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  final String proxyUri;

  /// Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  final ReservationAffinityResponse8 reservationAffinity;

  /// The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  final List<String> serviceAccountScopes;

  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final ShieldedInstanceConfigResponse8 shieldedInstanceConfig;

  /// The state of this instance.
  final String state;

  /// The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final String subnet;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String> tags;

  /// Instance update time.
  final String updateTime;

  /// The upgrade history of this instance.
  final List<UpgradeHistoryEntryResponse> upgradeHistory;

  /// Use a Compute Engine VM image to start the notebook instance.
  final VmImageResponse vmImage;

  GetInstanceResult18({
    required this.acceleratorConfig,
    required this.bootDiskSizeGb,
    required this.bootDiskType,
    required this.canIpForward,
    required this.containerImage,
    required this.createTime,
    required this.creator,
    required this.customGpuDriverPath,
    required this.dataDiskSizeGb,
    required this.dataDiskType,
    required this.diskEncryption,
    required this.disks,
    required this.installGpuDriver,
    required this.instanceMigrationEligibility,
    required this.instanceOwners,
    required this.kmsKey,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.migrated,
    required this.name,
    required this.network,
    required this.nicType,
    required this.noProxyAccess,
    required this.noPublicIp,
    required this.noRemoveDataDisk,
    required this.postStartupScript,
    required this.proxyUri,
    required this.reservationAffinity,
    required this.serviceAccount,
    required this.serviceAccountScopes,
    required this.shieldedInstanceConfig,
    required this.state,
    required this.subnet,
    required this.tags,
    required this.updateTime,
    required this.upgradeHistory,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorConfig'] = acceleratorConfig.toMap();
    map['bootDiskSizeGb'] = bootDiskSizeGb;
    map['bootDiskType'] = bootDiskType;
    map['canIpForward'] = canIpForward;
    map['containerImage'] = containerImage.toMap();
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['customGpuDriverPath'] = customGpuDriverPath;
    map['dataDiskSizeGb'] = dataDiskSizeGb;
    map['dataDiskType'] = dataDiskType;
    map['diskEncryption'] = diskEncryption;
    map['disks'] = Input.encodeList<DiskResponse4, Map<String, dynamic>>(
        disks, (value) => value.toMap());
    map['installGpuDriver'] = installGpuDriver;
    map['instanceMigrationEligibility'] = instanceMigrationEligibility.toMap();
    map['instanceOwners'] = instanceOwners;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['machineType'] = machineType;
    map['metadata'] = metadata;
    map['migrated'] = migrated;
    map['name'] = name;
    map['network'] = network;
    map['nicType'] = nicType;
    map['noProxyAccess'] = noProxyAccess;
    map['noPublicIp'] = noPublicIp;
    map['noRemoveDataDisk'] = noRemoveDataDisk;
    map['postStartupScript'] = postStartupScript;
    map['proxyUri'] = proxyUri;
    map['reservationAffinity'] = reservationAffinity.toMap();
    map['serviceAccount'] = serviceAccount;
    map['serviceAccountScopes'] = serviceAccountScopes;
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['state'] = state;
    map['subnet'] = subnet;
    map['tags'] = tags;
    map['updateTime'] = updateTime;
    map['upgradeHistory'] =
        Input.encodeList<UpgradeHistoryEntryResponse, Map<String, dynamic>>(
            upgradeHistory, (value) => value.toMap());
    map['vmImage'] = vmImage.toMap();
    return map;
  }

  factory GetInstanceResult18.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult18(
      acceleratorConfig: AcceleratorConfigResponse8.fromMap(
          (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      bootDiskSizeGb: map['bootDiskSizeGb'] as String,
      bootDiskType: map['bootDiskType'] as String,
      canIpForward: map['canIpForward'] as bool,
      containerImage: ContainerImageResponse.fromMap(
          (map['containerImage'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      customGpuDriverPath: map['customGpuDriverPath'] as String,
      dataDiskSizeGb: map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] as String,
      diskEncryption: map['diskEncryption'] as String,
      disks: Input.decodeList<DiskResponse4>(
          map['disks'],
          (value) =>
              DiskResponse4.fromMap((value as Map).cast<String, dynamic>())),
      installGpuDriver: map['installGpuDriver'] as bool,
      instanceMigrationEligibility:
          InstanceMigrationEligibilityResponse.fromMap(
              (map['instanceMigrationEligibility'] as Map)
                  .cast<String, dynamic>()),
      instanceOwners: (map['instanceOwners'] as List).cast<String>(),
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      migrated: map['migrated'] as bool,
      name: map['name'] as String,
      network: map['network'] as String,
      nicType: map['nicType'] as String,
      noProxyAccess: map['noProxyAccess'] as bool,
      noPublicIp: map['noPublicIp'] as bool,
      noRemoveDataDisk: map['noRemoveDataDisk'] as bool,
      postStartupScript: map['postStartupScript'] as String,
      proxyUri: map['proxyUri'] as String,
      reservationAffinity: ReservationAffinityResponse8.fromMap(
          (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      serviceAccountScopes:
          (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: ShieldedInstanceConfigResponse8.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      subnet: map['subnet'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
      upgradeHistory: Input.decodeList<UpgradeHistoryEntryResponse>(
          map['upgradeHistory'],
          (value) => UpgradeHistoryEntryResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vmImage: VmImageResponse.fromMap(
          (map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}
