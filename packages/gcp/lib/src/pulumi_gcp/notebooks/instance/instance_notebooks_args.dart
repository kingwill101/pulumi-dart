// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_accelerator_config/instance_accelerator_config.dart';
import '../instance_container_image/instance_container_image.dart';
import '../instance_reservation_affinity/instance_reservation_affinity_notebooks.dart';
import '../instance_shielded_instance_config/instance_shielded_instance_config_notebooks.dart';
import '../instance_vm_image/instance_vm_image.dart';

/// The set of arguments for Instance.
class InstanceNotebooksArgs {
  /// The hardware accelerator used on this instance. If you use accelerators,
  /// make sure that your configuration has enough vCPUs and memory to support the
  /// machineType you have selected.
  /// Structure is documented below.
  final pulumi.Input<InstanceAcceleratorConfig>? acceleratorConfig;

  /// The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
  /// If not specified, this defaults to 100.
  final pulumi.Input<int>? bootDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final pulumi.Input<String>? bootDiskType;

  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerImage>? containerImage;

  /// Instance creation time
  final pulumi.Input<String>? createTime;

  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;

  /// The size of the data disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB).
  /// You can choose the size of the data disk based on how big your notebooks and data are.
  /// If not specified, this defaults to 100.
  final pulumi.Input<int>? dataDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final pulumi.Input<String>? dataDiskType;

  /// Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final pulumi.Input<String>? desiredState;

  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible values are: `DISK_ENCRYPTION_UNSPECIFIED`, `GMEK`, `CMEK`.
  final pulumi.Input<String>? diskEncryption;

  /// Whether the end user authorizes Google Cloud to install GPU driver
  /// on this instance. If this field is empty or set to false, the GPU driver
  /// won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool>? installGpuDriver;

  /// The list of owners of this instance after creation.
  /// Format: alias@example.com.
  /// Currently supports one owner only.
  /// If not specified, all of the service account users of
  /// your VM instance's service account can use the instance.
  final pulumi.Input<List<String>>? instanceOwners;

  /// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
  final pulumi.Input<String>? kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> location;

  /// A reference to a machine type which defines VM kind.
  final pulumi.Input<String> machineType;

  /// Custom metadata to apply to this instance.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name specified for the Notebook instance.
  final pulumi.Input<String>? name;

  /// The name of the VPC that this instance is in.
  /// Format: projects/{project_id}/global/networks/{network_id}
  final pulumi.Input<String>? network;

  /// The type of vNIC driver.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  final pulumi.Input<String>? nicType;

  /// The notebook instance will not register with the proxy..
  final pulumi.Input<bool>? noProxyAccess;

  /// No public IP will be assigned to this instance.
  final pulumi.Input<bool>? noPublicIp;

  /// If true, the data disk will not be auto deleted when deleting the instance.
  final pulumi.Input<bool>? noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a
  /// notebook instance fully boots up. The path must be a URL
  /// or Cloud Storage path (gs://path-to-file/file-name).
  final pulumi.Input<String>? postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Reservation Affinity for consuming Zonal reservation.
  /// Structure is documented below.
  final pulumi.Input<InstanceReservationAffinityNotebooks>? reservationAffinity;

  /// The service account on this instance, giving access to other
  /// Google Cloud services. You can use any service account within
  /// the same project, but you must have the service account user
  /// permission to use the instance. If not specified,
  /// the Compute Engine default service account is used.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// If not specified, the following scopes are defined:
  /// - https://www.googleapis.com/auth/cloud-platform
  /// - https://www.googleapis.com/auth/userinfo.email
  final pulumi.Input<List<String>>? serviceAccountScopes;

  /// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// Not all combinations are valid
  /// Structure is documented below.
  final pulumi.Input<InstanceShieldedInstanceConfigNotebooks>?
      shieldedInstanceConfig;

  /// The name of the subnet that this instance is in.
  /// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
  final pulumi.Input<String>? subnet;

  /// The Compute Engine tags to add to instance.
  final pulumi.Input<List<String>>? tags;

  /// Instance update time.
  final pulumi.Input<String>? updateTime;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceVmImage>? vmImage;

  InstanceNotebooksArgs({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.containerImage,
    this.createTime,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.desiredState,
    this.diskEncryption,
    this.installGpuDriver,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    required this.location,
    required this.machineType,
    this.metadata,
    this.name,
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
    this.updateTime,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceAcceleratorConfig, Map<String, dynamic>>(
          acceleratorConfigValue, (value) => value.toMap());
    }
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final bootDiskTypeValue = bootDiskType;
    if (bootDiskTypeValue != null) {
      map['bootDiskType'] = bootDiskTypeValue;
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = pulumi.Input.mapOptionalInputValue<
          InstanceContainerImage,
          Map<String, dynamic>>(containerImageValue, (value) => value.toMap());
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
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
      map['dataDiskType'] = dataDiskTypeValue;
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final diskEncryptionValue = diskEncryption;
    if (diskEncryptionValue != null) {
      map['diskEncryption'] = diskEncryptionValue;
    }
    final installGpuDriverValue = installGpuDriver;
    if (installGpuDriverValue != null) {
      map['installGpuDriver'] = installGpuDriverValue;
    }
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
    map['location'] = location;
    map['machineType'] = machineType;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final nicTypeValue = nicType;
    if (nicTypeValue != null) {
      map['nicType'] = nicTypeValue;
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
      map['reservationAffinity'] = pulumi.Input.mapOptionalInputValue<
              InstanceReservationAffinityNotebooks, Map<String, dynamic>>(
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
      map['shieldedInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceShieldedInstanceConfigNotebooks, Map<String, dynamic>>(
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
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final vmImageValue = vmImage;
    if (vmImageValue != null) {
      map['vmImage'] = pulumi.Input.mapOptionalInputValue<InstanceVmImage,
          Map<String, dynamic>>(vmImageValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceNotebooksArgs.fromMap(Map<String, dynamic> map) {
    return InstanceNotebooksArgs(
      acceleratorConfig:
          pulumi.Input.asOptionalInput<InstanceAcceleratorConfig>(
              map['acceleratorConfig']),
      bootDiskSizeGb: pulumi.Input.asOptionalInput<int>(map['bootDiskSizeGb']),
      bootDiskType: pulumi.Input.asOptionalInput<String>(map['bootDiskType']),
      containerImage: pulumi.Input.asOptionalInput<InstanceContainerImage>(
          map['containerImage']),
      createTime: pulumi.Input.asOptionalInput<String>(map['createTime']),
      customGpuDriverPath:
          pulumi.Input.asOptionalInput<String>(map['customGpuDriverPath']),
      dataDiskSizeGb: pulumi.Input.asOptionalInput<int>(map['dataDiskSizeGb']),
      dataDiskType: pulumi.Input.asOptionalInput<String>(map['dataDiskType']),
      desiredState: pulumi.Input.asOptionalInput<String>(map['desiredState']),
      diskEncryption:
          pulumi.Input.asOptionalInput<String>(map['diskEncryption']),
      installGpuDriver:
          pulumi.Input.asOptionalInput<bool>(map['installGpuDriver']),
      instanceOwners:
          pulumi.Input.asOptionalInput<List<String>>(map['instanceOwners']),
      kmsKey: pulumi.Input.asOptionalInput<String>(map['kmsKey']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      machineType: pulumi.Input.asInput<String>(map['machineType']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      nicType: pulumi.Input.asOptionalInput<String>(map['nicType']),
      noProxyAccess: pulumi.Input.asOptionalInput<bool>(map['noProxyAccess']),
      noPublicIp: pulumi.Input.asOptionalInput<bool>(map['noPublicIp']),
      noRemoveDataDisk:
          pulumi.Input.asOptionalInput<bool>(map['noRemoveDataDisk']),
      postStartupScript:
          pulumi.Input.asOptionalInput<String>(map['postStartupScript']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationAffinity:
          pulumi.Input.asOptionalInput<InstanceReservationAffinityNotebooks>(
              map['reservationAffinity']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      serviceAccountScopes: pulumi.Input.asOptionalInput<List<String>>(
          map['serviceAccountScopes']),
      shieldedInstanceConfig:
          pulumi.Input.asOptionalInput<InstanceShieldedInstanceConfigNotebooks>(
              map['shieldedInstanceConfig']),
      subnet: pulumi.Input.asOptionalInput<String>(map['subnet']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
      updateTime: pulumi.Input.asOptionalInput<String>(map['updateTime']),
      vmImage: pulumi.Input.asOptionalInput<InstanceVmImage>(map['vmImage']),
    );
  }
}
