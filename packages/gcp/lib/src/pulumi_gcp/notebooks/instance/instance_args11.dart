// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_accelerator_config/instance_accelerator_config.dart';
import '../instance_container_image/instance_container_image.dart';
import '../instance_reservation_affinity/instance_reservation_affinity2.dart';
import '../instance_shielded_instance_config/instance_shielded_instance_config2.dart';
import '../instance_vm_image/instance_vm_image.dart';

/// The set of arguments for Instance.
class InstanceArgs11 {
  /// The hardware accelerator used on this instance. If you use accelerators,
  /// make sure that your configuration has enough vCPUs and memory to support the
  /// machineType you have selected.
  /// Structure is documented below.
  final Input<InstanceAcceleratorConfig>? acceleratorConfig;

  /// The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
  /// If not specified, this defaults to 100.
  final Input<int>? bootDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final Input<String>? bootDiskType;

  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final Input<InstanceContainerImage>? containerImage;

  /// Instance creation time
  final Input<String>? createTime;

  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  final Input<String>? customGpuDriverPath;

  /// The size of the data disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB).
  /// You can choose the size of the data disk based on how big your notebooks and data are.
  /// If not specified, this defaults to 100.
  final Input<int>? dataDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final Input<String>? dataDiskType;

  /// Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final Input<String>? desiredState;

  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible values are: `DISK_ENCRYPTION_UNSPECIFIED`, `GMEK`, `CMEK`.
  final Input<String>? diskEncryption;

  /// Whether the end user authorizes Google Cloud to install GPU driver
  /// on this instance. If this field is empty or set to false, the GPU driver
  /// won't be installed. Only applicable to instances with GPUs.
  final Input<bool>? installGpuDriver;

  /// The list of owners of this instance after creation.
  /// Format: alias@example.com.
  /// Currently supports one owner only.
  /// If not specified, all of the service account users of
  /// your VM instance's service account can use the instance.
  final Input<List<String>>? instanceOwners;

  /// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
  final Input<String>? kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// A reference to the zone where the machine resides.
  final Input<String> location;

  /// A reference to a machine type which defines VM kind.
  final Input<String> machineType;

  /// Custom metadata to apply to this instance.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Input<Map<String, String>>? metadata;

  /// The name specified for the Notebook instance.
  final Input<String>? name;

  /// The name of the VPC that this instance is in.
  /// Format: projects/{project_id}/global/networks/{network_id}
  final Input<String>? network;

  /// The type of vNIC driver.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  final Input<String>? nicType;

  /// The notebook instance will not register with the proxy..
  final Input<bool>? noProxyAccess;

  /// No public IP will be assigned to this instance.
  final Input<bool>? noPublicIp;

  /// If true, the data disk will not be auto deleted when deleting the instance.
  final Input<bool>? noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a
  /// notebook instance fully boots up. The path must be a URL
  /// or Cloud Storage path (gs://path-to-file/file-name).
  final Input<String>? postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Reservation Affinity for consuming Zonal reservation.
  /// Structure is documented below.
  final Input<InstanceReservationAffinity2>? reservationAffinity;

  /// The service account on this instance, giving access to other
  /// Google Cloud services. You can use any service account within
  /// the same project, but you must have the service account user
  /// permission to use the instance. If not specified,
  /// the Compute Engine default service account is used.
  final Input<String>? serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// If not specified, the following scopes are defined:
  /// - https://www.googleapis.com/auth/cloud-platform
  /// - https://www.googleapis.com/auth/userinfo.email
  final Input<List<String>>? serviceAccountScopes;

  /// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// Not all combinations are valid
  /// Structure is documented below.
  final Input<InstanceShieldedInstanceConfig2>? shieldedInstanceConfig;

  /// The name of the subnet that this instance is in.
  /// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
  final Input<String>? subnet;

  /// The Compute Engine tags to add to instance.
  final Input<List<String>>? tags;

  /// Instance update time.
  final Input<String>? updateTime;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  final Input<InstanceVmImage>? vmImage;

  InstanceArgs11({
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
      map['acceleratorConfig'] = Input.mapOptionalInputValue<
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
      map['containerImage'] = Input.mapOptionalInputValue<
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
      map['reservationAffinity'] = Input.mapOptionalInputValue<
              InstanceReservationAffinity2, Map<String, dynamic>>(
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
              InstanceShieldedInstanceConfig2, Map<String, dynamic>>(
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
      map['vmImage'] =
          Input.mapOptionalInputValue<InstanceVmImage, Map<String, dynamic>>(
              vmImageValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs11.fromMap(Map<String, dynamic> map) {
    return InstanceArgs11(
      acceleratorConfig: Input.asOptionalInput<InstanceAcceleratorConfig>(
          map['acceleratorConfig']),
      bootDiskSizeGb: Input.asOptionalInput<int>(map['bootDiskSizeGb']),
      bootDiskType: Input.asOptionalInput<String>(map['bootDiskType']),
      containerImage:
          Input.asOptionalInput<InstanceContainerImage>(map['containerImage']),
      createTime: Input.asOptionalInput<String>(map['createTime']),
      customGpuDriverPath:
          Input.asOptionalInput<String>(map['customGpuDriverPath']),
      dataDiskSizeGb: Input.asOptionalInput<int>(map['dataDiskSizeGb']),
      dataDiskType: Input.asOptionalInput<String>(map['dataDiskType']),
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      diskEncryption: Input.asOptionalInput<String>(map['diskEncryption']),
      installGpuDriver: Input.asOptionalInput<bool>(map['installGpuDriver']),
      instanceOwners:
          Input.asOptionalInput<List<String>>(map['instanceOwners']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      machineType: Input.asInput<String>(map['machineType']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      nicType: Input.asOptionalInput<String>(map['nicType']),
      noProxyAccess: Input.asOptionalInput<bool>(map['noProxyAccess']),
      noPublicIp: Input.asOptionalInput<bool>(map['noPublicIp']),
      noRemoveDataDisk: Input.asOptionalInput<bool>(map['noRemoveDataDisk']),
      postStartupScript:
          Input.asOptionalInput<String>(map['postStartupScript']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationAffinity: Input.asOptionalInput<InstanceReservationAffinity2>(
          map['reservationAffinity']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      serviceAccountScopes:
          Input.asOptionalInput<List<String>>(map['serviceAccountScopes']),
      shieldedInstanceConfig:
          Input.asOptionalInput<InstanceShieldedInstanceConfig2>(
              map['shieldedInstanceConfig']),
      subnet: Input.asOptionalInput<String>(map['subnet']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      updateTime: Input.asOptionalInput<String>(map['updateTime']),
      vmImage: Input.asOptionalInput<InstanceVmImage>(map['vmImage']),
    );
  }
}
