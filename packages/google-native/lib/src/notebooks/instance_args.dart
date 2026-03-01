// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'container_image.dart';
import 'instance_boot_disk_type.dart';
import 'instance_data_disk_type.dart';
import 'instance_disk_encryption.dart';
import 'instance_nic_type.dart';
import 'reservation_affinity.dart';
import 'shielded_instance_config.dart';
import 'upgrade_history_entry.dart';
import 'vm_image.dart';

/// {@template pulumi_notebooks_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_instance_args_doc}
class InstanceArgs {
  /// The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  final pulumi.Input<AcceleratorConfig>? acceleratorConfig;

  /// Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  final pulumi.Input<String>? bootDiskSizeGb;

  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final pulumi.Input<InstanceBootDiskType>? bootDiskType;

  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final pulumi.Input<bool>? canIpForward;

  /// Use a container image to start the notebook instance.
  final pulumi.Input<ContainerImage>? containerImage;

  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;

  /// Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  final pulumi.Input<String>? dataDiskSizeGb;

  /// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final pulumi.Input<InstanceDataDiskType>? dataDiskType;

  /// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final pulumi.Input<InstanceDiskEncryption>? diskEncryption;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool>? installGpuDriver;

  /// Required. User-defined unique ID of this instance.
  final pulumi.Input<String> instanceId;

  /// Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final pulumi.Input<List<String>>? instanceOwners;

  /// Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  final pulumi.Input<String>? kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  final pulumi.Input<String> machineType;

  /// Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final pulumi.Input<String>? network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final pulumi.Input<InstanceNicType>? nicType;

  /// If true, the notebook instance will not register with the proxy.
  final pulumi.Input<bool>? noProxyAccess;

  /// If true, no external IP will be assigned to this instance.
  final pulumi.Input<bool>? noPublicIp;

  /// Input only. If true, the data disk will not be auto deleted when deleting the instance.
  final pulumi.Input<bool>? noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final pulumi.Input<String>? postStartupScript;
  final pulumi.Input<String>? project;

  /// Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  final pulumi.Input<ReservationAffinity>? reservationAffinity;

  /// The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  final pulumi.Input<List<String>>? serviceAccountScopes;

  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final pulumi.Input<ShieldedInstanceConfig>? shieldedInstanceConfig;

  /// The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final pulumi.Input<String>? subnet;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;

  /// The upgrade history of this instance.
  final pulumi.Input<List<UpgradeHistoryEntry>>? upgradeHistory;

  /// Use a Compute Engine VM image to start the notebook instance.
  final pulumi.Input<VmImage>? vmImage;

  /// Creates a new [InstanceArgs].
  /// [acceleratorConfig] The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// [bootDiskSizeGb] Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  /// [bootDiskType] Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [canIpForward] Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  /// [containerImage] Use a container image to start the notebook instance.
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [dataDiskSizeGb] Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  /// [dataDiskType] Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [diskEncryption] Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [installGpuDriver] Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  /// [kmsKey] Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [location] Optional.
  /// [machineType] The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  /// [metadata] Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  /// [network] The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  /// [nicType] Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [noProxyAccess] If true, the notebook instance will not register with the proxy.
  /// [noPublicIp] If true, no external IP will be assigned to this instance.
  /// [noRemoveDataDisk] Input only. If true, the data disk will not be auto deleted when deleting the instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  /// [project] Optional.
  /// [reservationAffinity] Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  /// [serviceAccount] The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  /// [shieldedInstanceConfig] Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// [subnet] The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [upgradeHistory] The upgrade history of this instance.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  InstanceArgs({
    AcceleratorConfig? acceleratorConfig,
    String? bootDiskSizeGb,
    InstanceBootDiskType? bootDiskType,
    bool? canIpForward,
    ContainerImage? containerImage,
    String? customGpuDriverPath,
    String? dataDiskSizeGb,
    InstanceDataDiskType? dataDiskType,
    InstanceDiskEncryption? diskEncryption,
    bool? installGpuDriver,
    required String instanceId,
    List<String>? instanceOwners,
    String? kmsKey,
    Map<String, String>? labels,
    String? location,
    required String machineType,
    Map<String, String>? metadata,
    String? network,
    InstanceNicType? nicType,
    bool? noProxyAccess,
    bool? noPublicIp,
    bool? noRemoveDataDisk,
    String? postStartupScript,
    String? project,
    ReservationAffinity? reservationAffinity,
    String? serviceAccount,
    List<String>? serviceAccountScopes,
    ShieldedInstanceConfig? shieldedInstanceConfig,
    String? subnet,
    List<String>? tags,
    List<UpgradeHistoryEntry>? upgradeHistory,
    VmImage? vmImage,
  }) : acceleratorConfig = pulumi.Input.asOptionalInput<AcceleratorConfig>(
         acceleratorConfig,
       ),
       bootDiskSizeGb = pulumi.Input.asOptionalInput<String>(bootDiskSizeGb),
       bootDiskType = pulumi.Input.asOptionalInput<InstanceBootDiskType>(
         bootDiskType,
       ),
       canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
       containerImage = pulumi.Input.asOptionalInput<ContainerImage>(
         containerImage,
       ),
       customGpuDriverPath = pulumi.Input.asOptionalInput<String>(
         customGpuDriverPath,
       ),
       dataDiskSizeGb = pulumi.Input.asOptionalInput<String>(dataDiskSizeGb),
       dataDiskType = pulumi.Input.asOptionalInput<InstanceDataDiskType>(
         dataDiskType,
       ),
       diskEncryption = pulumi.Input.asOptionalInput<InstanceDiskEncryption>(
         diskEncryption,
       ),
       installGpuDriver = pulumi.Input.asOptionalInput<bool>(installGpuDriver),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       instanceOwners = pulumi.Input.asOptionalInput<List<String>>(
         instanceOwners,
       ),
       kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       machineType = pulumi.Input.asInput<String>(machineType),
       metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
       network = pulumi.Input.asOptionalInput<String>(network),
       nicType = pulumi.Input.asOptionalInput<InstanceNicType>(nicType),
       noProxyAccess = pulumi.Input.asOptionalInput<bool>(noProxyAccess),
       noPublicIp = pulumi.Input.asOptionalInput<bool>(noPublicIp),
       noRemoveDataDisk = pulumi.Input.asOptionalInput<bool>(noRemoveDataDisk),
       postStartupScript = pulumi.Input.asOptionalInput<String>(
         postStartupScript,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       reservationAffinity = pulumi.Input.asOptionalInput<ReservationAffinity>(
         reservationAffinity,
       ),
       serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
       serviceAccountScopes = pulumi.Input.asOptionalInput<List<String>>(
         serviceAccountScopes,
       ),
       shieldedInstanceConfig =
           pulumi.Input.asOptionalInput<ShieldedInstanceConfig>(
             shieldedInstanceConfig,
           ),
       subnet = pulumi.Input.asOptionalInput<String>(subnet),
       tags = pulumi.Input.asOptionalInput<List<String>>(tags),
       upgradeHistory = pulumi.Input.asOptionalInput<List<UpgradeHistoryEntry>>(
         upgradeHistory,
       ),
       vmImage = pulumi.Input.asOptionalInput<VmImage>(vmImage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AcceleratorConfig,
            Map<String, dynamic>
          >(acceleratorConfig, (value) => value.toMap()),
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType':
          ?pulumi.Input.mapOptionalInputValue<InstanceBootDiskType, String>(
            bootDiskType,
            (value) => value.value,
          ),
      'canIpForward': ?canIpForward,
      'containerImage':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerImage,
            Map<String, dynamic>
          >(containerImage, (value) => value.toMap()),
      'customGpuDriverPath': ?customGpuDriverPath,
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType':
          ?pulumi.Input.mapOptionalInputValue<InstanceDataDiskType, String>(
            dataDiskType,
            (value) => value.value,
          ),
      'diskEncryption':
          ?pulumi.Input.mapOptionalInputValue<InstanceDiskEncryption, String>(
            diskEncryption,
            (value) => value.value,
          ),
      'installGpuDriver': ?installGpuDriver,
      'instanceId': instanceId,
      'instanceOwners': ?instanceOwners,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'machineType': machineType,
      'metadata': ?metadata,
      'network': ?network,
      'nicType': ?pulumi.Input.mapOptionalInputValue<InstanceNicType, String>(
        nicType,
        (value) => value.value,
      ),
      'noProxyAccess': ?noProxyAccess,
      'noPublicIp': ?noPublicIp,
      'noRemoveDataDisk': ?noRemoveDataDisk,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'reservationAffinity':
          ?pulumi.Input.mapOptionalInputValue<
            ReservationAffinity,
            Map<String, dynamic>
          >(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ShieldedInstanceConfig,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'subnet': ?subnet,
      'tags': ?tags,
      'upgradeHistory':
          ?pulumi.Input.mapOptionalInputValue<
            List<UpgradeHistoryEntry>,
            List<Map<String, dynamic>>
          >(
            upgradeHistory,
            (value) =>
                pulumi.Input.encodeList<
                  UpgradeHistoryEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vmImage':
          ?pulumi.Input.mapOptionalInputValue<VmImage, Map<String, dynamic>>(
            vmImage,
            (value) => value.toMap(),
          ),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : AcceleratorConfig.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>(),
            ),
      bootDiskSizeGb: map['bootDiskSizeGb'] == null
          ? null
          : map['bootDiskSizeGb'] as String,
      bootDiskType: map['bootDiskType'] == null
          ? null
          : InstanceBootDiskType.fromValue(map['bootDiskType'] as String),
      canIpForward: map['canIpForward'] == null
          ? null
          : map['canIpForward'] as bool,
      containerImage: map['containerImage'] == null
          ? null
          : ContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>(),
            ),
      customGpuDriverPath: map['customGpuDriverPath'] == null
          ? null
          : map['customGpuDriverPath'] as String,
      dataDiskSizeGb: map['dataDiskSizeGb'] == null
          ? null
          : map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] == null
          ? null
          : InstanceDataDiskType.fromValue(map['dataDiskType'] as String),
      diskEncryption: map['diskEncryption'] == null
          ? null
          : InstanceDiskEncryption.fromValue(map['diskEncryption'] as String),
      installGpuDriver: map['installGpuDriver'] == null
          ? null
          : map['installGpuDriver'] as bool,
      instanceId: map['instanceId'] as String,
      instanceOwners: map['instanceOwners'] == null
          ? null
          : (map['instanceOwners'] as List).cast<String>(),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      machineType: map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      nicType: map['nicType'] == null
          ? null
          : InstanceNicType.fromValue(map['nicType'] as String),
      noProxyAccess: map['noProxyAccess'] == null
          ? null
          : map['noProxyAccess'] as bool,
      noPublicIp: map['noPublicIp'] == null ? null : map['noPublicIp'] as bool,
      noRemoveDataDisk: map['noRemoveDataDisk'] == null
          ? null
          : map['noRemoveDataDisk'] as bool,
      postStartupScript: map['postStartupScript'] == null
          ? null
          : map['postStartupScript'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : ReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>(),
            ),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      upgradeHistory: map['upgradeHistory'] == null
          ? null
          : pulumi.Input.decodeList<UpgradeHistoryEntry>(
              map['upgradeHistory'],
              (value) => UpgradeHistoryEntry.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      vmImage: map['vmImage'] == null
          ? null
          : VmImage.fromMap((map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}
