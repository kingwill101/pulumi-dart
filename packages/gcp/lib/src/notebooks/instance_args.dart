// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_accelerator_config.dart';
import 'instance_container_image.dart';
import 'instance_reservation_affinity.dart';
import 'instance_shielded_instance_config.dart';
import 'instance_vm_image.dart';

/// {@template pulumi_notebooks_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_instance_instance_args_doc}
class InstanceArgs {
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
  final pulumi.Input<InstanceReservationAffinity>? reservationAffinity;

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
  final pulumi.Input<InstanceShieldedInstanceConfig>? shieldedInstanceConfig;

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

  /// Creates a new [InstanceArgs].
  /// [acceleratorConfig] The hardware accelerator used on this instance. If you use accelerators,
  /// [bootDiskSizeGb] The size of the boot disk in GB attached to this instance,
  /// [bootDiskType] Possible disk types for notebook instances.
  /// [containerImage] Use a container image to start the notebook instance.
  /// [createTime] Instance creation time
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored.
  /// [dataDiskSizeGb] The size of the data disk in GB attached to this instance,
  /// [dataDiskType] Possible disk types for notebook instances.
  /// [desiredState] Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  /// [diskEncryption] Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [installGpuDriver] Whether the end user authorizes Google Cloud to install GPU driver
  /// [instanceOwners] The list of owners of this instance after creation.
  /// [kmsKey] The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [location] A reference to the zone where the machine resides.
  /// [machineType] A reference to a machine type which defines VM kind.
  /// [metadata] Custom metadata to apply to this instance.
  /// [name] The name specified for the Notebook instance.
  /// [network] The name of the VPC that this instance is in.
  /// [nicType] The type of vNIC driver.
  /// [noProxyAccess] The notebook instance will not register with the proxy..
  /// [noPublicIp] No public IP will be assigned to this instance.
  /// [noRemoveDataDisk] If true, the data disk will not be auto deleted when deleting the instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationAffinity] Reservation Affinity for consuming Zonal reservation.
  /// [serviceAccount] The service account on this instance, giving access to other
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// [shieldedInstanceConfig] A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// [subnet] The name of the subnet that this instance is in.
  /// [tags] The Compute Engine tags to add to instance.
  /// [updateTime] Instance update time.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  InstanceArgs({
    InstanceAcceleratorConfig? acceleratorConfig,
    int? bootDiskSizeGb,
    String? bootDiskType,
    InstanceContainerImage? containerImage,
    String? createTime,
    String? customGpuDriverPath,
    int? dataDiskSizeGb,
    String? dataDiskType,
    String? desiredState,
    String? diskEncryption,
    bool? installGpuDriver,
    List<String>? instanceOwners,
    String? kmsKey,
    Map<String, String>? labels,
    required String location,
    required String machineType,
    Map<String, String>? metadata,
    String? name,
    String? network,
    String? nicType,
    bool? noProxyAccess,
    bool? noPublicIp,
    bool? noRemoveDataDisk,
    String? postStartupScript,
    String? project,
    InstanceReservationAffinity? reservationAffinity,
    String? serviceAccount,
    List<String>? serviceAccountScopes,
    InstanceShieldedInstanceConfig? shieldedInstanceConfig,
    String? subnet,
    List<String>? tags,
    String? updateTime,
    InstanceVmImage? vmImage,
  })  : acceleratorConfig =
            pulumi.Input.asOptionalInput<InstanceAcceleratorConfig>(
                acceleratorConfig),
        bootDiskSizeGb = pulumi.Input.asOptionalInput<int>(bootDiskSizeGb),
        bootDiskType = pulumi.Input.asOptionalInput<String>(bootDiskType),
        containerImage = pulumi.Input.asOptionalInput<InstanceContainerImage>(
            containerImage),
        createTime = pulumi.Input.asOptionalInput<String>(createTime),
        customGpuDriverPath =
            pulumi.Input.asOptionalInput<String>(customGpuDriverPath),
        dataDiskSizeGb = pulumi.Input.asOptionalInput<int>(dataDiskSizeGb),
        dataDiskType = pulumi.Input.asOptionalInput<String>(dataDiskType),
        desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
        diskEncryption = pulumi.Input.asOptionalInput<String>(diskEncryption),
        installGpuDriver = pulumi.Input.asOptionalInput<bool>(installGpuDriver),
        instanceOwners =
            pulumi.Input.asOptionalInput<List<String>>(instanceOwners),
        kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        machineType = pulumi.Input.asInput<String>(machineType),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        name = pulumi.Input.asOptionalInput<String>(name),
        network = pulumi.Input.asOptionalInput<String>(network),
        nicType = pulumi.Input.asOptionalInput<String>(nicType),
        noProxyAccess = pulumi.Input.asOptionalInput<bool>(noProxyAccess),
        noPublicIp = pulumi.Input.asOptionalInput<bool>(noPublicIp),
        noRemoveDataDisk = pulumi.Input.asOptionalInput<bool>(noRemoveDataDisk),
        postStartupScript =
            pulumi.Input.asOptionalInput<String>(postStartupScript),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservationAffinity =
            pulumi.Input.asOptionalInput<InstanceReservationAffinity>(
                reservationAffinity),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        serviceAccountScopes =
            pulumi.Input.asOptionalInput<List<String>>(serviceAccountScopes),
        shieldedInstanceConfig =
            pulumi.Input.asOptionalInput<InstanceShieldedInstanceConfig>(
                shieldedInstanceConfig),
        subnet = pulumi.Input.asOptionalInput<String>(subnet),
        tags = pulumi.Input.asOptionalInput<List<String>>(tags),
        updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
        vmImage = pulumi.Input.asOptionalInput<InstanceVmImage>(vmImage);

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
              InstanceReservationAffinity, Map<String, dynamic>>(
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
              InstanceShieldedInstanceConfig, Map<String, dynamic>>(
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

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : InstanceAcceleratorConfig.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      bootDiskType:
          map['bootDiskType'] == null ? null : map['bootDiskType'] as String,
      containerImage: map['containerImage'] == null
          ? null
          : InstanceContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>()),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      customGpuDriverPath: map['customGpuDriverPath'] == null
          ? null
          : map['customGpuDriverPath'] as String,
      dataDiskSizeGb:
          map['dataDiskSizeGb'] == null ? null : map['dataDiskSizeGb'] as int,
      dataDiskType:
          map['dataDiskType'] == null ? null : map['dataDiskType'] as String,
      desiredState:
          map['desiredState'] == null ? null : map['desiredState'] as String,
      diskEncryption: map['diskEncryption'] == null
          ? null
          : map['diskEncryption'] as String,
      installGpuDriver: map['installGpuDriver'] == null
          ? null
          : map['installGpuDriver'] as bool,
      instanceOwners: map['instanceOwners'] == null
          ? null
          : (map['instanceOwners'] as List).cast<String>(),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      machineType: map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      noProxyAccess:
          map['noProxyAccess'] == null ? null : map['noProxyAccess'] as bool,
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
          : InstanceReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : InstanceShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      vmImage: map['vmImage'] == null
          ? null
          : InstanceVmImage.fromMap(
              (map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}
