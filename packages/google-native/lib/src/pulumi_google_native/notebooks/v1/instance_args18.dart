// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config8.dart';
import 'container_image.dart';
import 'instance_boot_disk_type.dart';
import 'instance_data_disk_type.dart';
import 'instance_disk_encryption.dart';
import 'instance_nic_type.dart';
import 'reservation_affinity8.dart';
import 'shielded_instance_config8.dart';
import 'upgrade_history_entry.dart';
import 'vm_image.dart';

/// The set of arguments for Instance.
class InstanceArgs18 {
  /// The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  final Input<AcceleratorConfig8>? acceleratorConfig;

  /// Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  final Input<String>? bootDiskSizeGb;

  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final Input<InstanceBootDiskType>? bootDiskType;

  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final Input<bool>? canIpForward;

  /// Use a container image to start the notebook instance.
  final Input<ContainerImage>? containerImage;

  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final Input<String>? customGpuDriverPath;

  /// Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  final Input<String>? dataDiskSizeGb;

  /// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final Input<InstanceDataDiskType>? dataDiskType;

  /// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final Input<InstanceDiskEncryption>? diskEncryption;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final Input<bool>? installGpuDriver;

  /// Required. User-defined unique ID of this instance.
  final Input<String> instanceId;

  /// Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final Input<List<String>>? instanceOwners;

  /// Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  final Input<String>? kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  final Input<String> machineType;

  /// Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  final Input<Map<String, String>>? metadata;

  /// The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final Input<String>? network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final Input<InstanceNicType>? nicType;

  /// If true, the notebook instance will not register with the proxy.
  final Input<bool>? noProxyAccess;

  /// If true, no external IP will be assigned to this instance.
  final Input<bool>? noPublicIp;

  /// Input only. If true, the data disk will not be auto deleted when deleting the instance.
  final Input<bool>? noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final Input<String>? postStartupScript;
  final Input<String>? project;

  /// Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  final Input<ReservationAffinity8>? reservationAffinity;

  /// The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final Input<String>? serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  final Input<List<String>>? serviceAccountScopes;

  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final Input<ShieldedInstanceConfig8>? shieldedInstanceConfig;

  /// The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final Input<String>? subnet;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final Input<List<String>>? tags;

  /// The upgrade history of this instance.
  final Input<List<UpgradeHistoryEntry>>? upgradeHistory;

  /// Use a Compute Engine VM image to start the notebook instance.
  final Input<VmImage>? vmImage;

  InstanceArgs18({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.canIpForward,
    this.containerImage,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.diskEncryption,
    this.installGpuDriver,
    required this.instanceId,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    this.location,
    required this.machineType,
    this.metadata,
    this.network,
    this.nicType,
    this.noProxyAccess,
    this.noPublicIp,
    this.noRemoveDataDisk,
    this.postStartupScript,
    this.project,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnet,
    this.tags,
    this.upgradeHistory,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] =
          Input.mapOptionalInputValue<AcceleratorConfig8, Map<String, dynamic>>(
              acceleratorConfigValue, (value) => value.toMap());
    }
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final bootDiskTypeValue = bootDiskType;
    if (bootDiskTypeValue != null) {
      map['bootDiskType'] =
          Input.mapOptionalInputValue<InstanceBootDiskType, String>(
              bootDiskTypeValue, (value) => value.value);
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] =
          Input.mapOptionalInputValue<ContainerImage, Map<String, dynamic>>(
              containerImageValue, (value) => value.toMap());
    }
    final customGpuDriverPathValue = customGpuDriverPath;
    if (customGpuDriverPathValue != null) {
      map['customGpuDriverPath'] = customGpuDriverPathValue;
    }
    final dataDiskSizeGbValue = dataDiskSizeGb;
    if (dataDiskSizeGbValue != null) {
      map['dataDiskSizeGb'] = dataDiskSizeGbValue;
    }
    final dataDiskTypeValue = dataDiskType;
    if (dataDiskTypeValue != null) {
      map['dataDiskType'] =
          Input.mapOptionalInputValue<InstanceDataDiskType, String>(
              dataDiskTypeValue, (value) => value.value);
    }
    final diskEncryptionValue = diskEncryption;
    if (diskEncryptionValue != null) {
      map['diskEncryption'] =
          Input.mapOptionalInputValue<InstanceDiskEncryption, String>(
              diskEncryptionValue, (value) => value.value);
    }
    final installGpuDriverValue = installGpuDriver;
    if (installGpuDriverValue != null) {
      map['installGpuDriver'] = installGpuDriverValue;
    }
    map['instanceId'] = instanceId;
    final instanceOwnersValue = instanceOwners;
    if (instanceOwnersValue != null) {
      map['instanceOwners'] = instanceOwnersValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['machineType'] = machineType;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final nicTypeValue = nicType;
    if (nicTypeValue != null) {
      map['nicType'] = Input.mapOptionalInputValue<InstanceNicType, String>(
          nicTypeValue, (value) => value.value);
    }
    final noProxyAccessValue = noProxyAccess;
    if (noProxyAccessValue != null) {
      map['noProxyAccess'] = noProxyAccessValue;
    }
    final noPublicIpValue = noPublicIp;
    if (noPublicIpValue != null) {
      map['noPublicIp'] = noPublicIpValue;
    }
    final noRemoveDataDiskValue = noRemoveDataDisk;
    if (noRemoveDataDiskValue != null) {
      map['noRemoveDataDisk'] = noRemoveDataDiskValue;
    }
    final postStartupScriptValue = postStartupScript;
    if (postStartupScriptValue != null) {
      map['postStartupScript'] = postStartupScriptValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = Input.mapOptionalInputValue<
              ReservationAffinity8, Map<String, dynamic>>(
          reservationAffinityValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final serviceAccountScopesValue = serviceAccountScopes;
    if (serviceAccountScopesValue != null) {
      map['serviceAccountScopes'] = serviceAccountScopesValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              ShieldedInstanceConfig8, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final subnetValue = subnet;
    if (subnetValue != null) {
      map['subnet'] = subnetValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final upgradeHistoryValue = upgradeHistory;
    if (upgradeHistoryValue != null) {
      map['upgradeHistory'] = Input.mapOptionalInputValue<
              List<UpgradeHistoryEntry>, List<Map<String, dynamic>>>(
          upgradeHistoryValue,
          (value) =>
              Input.encodeList<UpgradeHistoryEntry, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final vmImageValue = vmImage;
    if (vmImageValue != null) {
      map['vmImage'] =
          Input.mapOptionalInputValue<VmImage, Map<String, dynamic>>(
              vmImageValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs18.fromMap(Map<String, dynamic> map) {
    return InstanceArgs18(
      acceleratorConfig:
          Input.asOptionalInput<AcceleratorConfig8>(map['acceleratorConfig']),
      bootDiskSizeGb: Input.asOptionalInput<String>(map['bootDiskSizeGb']),
      bootDiskType:
          Input.asOptionalInput<InstanceBootDiskType>(map['bootDiskType']),
      canIpForward: Input.asOptionalInput<bool>(map['canIpForward']),
      containerImage:
          Input.asOptionalInput<ContainerImage>(map['containerImage']),
      customGpuDriverPath:
          Input.asOptionalInput<String>(map['customGpuDriverPath']),
      dataDiskSizeGb: Input.asOptionalInput<String>(map['dataDiskSizeGb']),
      dataDiskType:
          Input.asOptionalInput<InstanceDataDiskType>(map['dataDiskType']),
      diskEncryption:
          Input.asOptionalInput<InstanceDiskEncryption>(map['diskEncryption']),
      installGpuDriver: Input.asOptionalInput<bool>(map['installGpuDriver']),
      instanceId: Input.asInput<String>(map['instanceId']),
      instanceOwners:
          Input.asOptionalInput<List<String>>(map['instanceOwners']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      machineType: Input.asInput<String>(map['machineType']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      network: Input.asOptionalInput<String>(map['network']),
      nicType: Input.asOptionalInput<InstanceNicType>(map['nicType']),
      noProxyAccess: Input.asOptionalInput<bool>(map['noProxyAccess']),
      noPublicIp: Input.asOptionalInput<bool>(map['noPublicIp']),
      noRemoveDataDisk: Input.asOptionalInput<bool>(map['noRemoveDataDisk']),
      postStartupScript:
          Input.asOptionalInput<String>(map['postStartupScript']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationAffinity: Input.asOptionalInput<ReservationAffinity8>(
          map['reservationAffinity']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      serviceAccountScopes:
          Input.asOptionalInput<List<String>>(map['serviceAccountScopes']),
      shieldedInstanceConfig: Input.asOptionalInput<ShieldedInstanceConfig8>(
          map['shieldedInstanceConfig']),
      subnet: Input.asOptionalInput<String>(map['subnet']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      upgradeHistory: Input.asOptionalInput<List<UpgradeHistoryEntry>>(
          map['upgradeHistory']),
      vmImage: Input.asOptionalInput<VmImage>(map['vmImage']),
    );
  }
}
