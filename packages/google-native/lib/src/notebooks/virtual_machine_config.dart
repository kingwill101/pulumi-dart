// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'encryption_config.dart';
import 'local_disk.dart';
import 'runtime_accelerator_config.dart';
import 'runtime_shielded_instance_config.dart';
import 'virtual_machine_config_nic_type.dart';

/// The config settings for virtual machine.
class VirtualMachineConfig {
  /// Optional. The Compute Engine accelerator configuration for this runtime.
  final RuntimeAcceleratorConfig? acceleratorConfig;

  /// Optional. Boot image metadata used for runtime upgradeability.
  final Map<String, dynamic>? bootImage;

  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final List<ContainerImage>? containerImages;

  /// Data disk option configuration settings.
  final LocalDisk dataDisk;

  /// Optional. Encryption settings for virtual machine data disk.
  final EncryptionConfig? encryptionConfig;

  /// Optional. If true, runtime will only have internal IP addresses. By default, runtimes are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each vm. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all dependencies must be configured to be accessible without external IP addresses.
  final bool? internalIpOnly;

  /// Optional. The labels to associate with this runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String>? labels;

  /// The Compute Engine machine type used for runtimes. Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`
  final String machineType;

  /// Optional. The Compute Engine metadata entries to add to virtual machine. (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final Map<String, String>? metadata;

  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork. If neither `network` nor `subnet` is specified, the "default" network of the project is used, if it exists. A full URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default` * `projects/[project_id]/global/networks/default` Runtimes are managed resources inside Google Infrastructure. Runtimes support the following network configurations: * Google Managed Network (Network & subnet are empty) * Consumer Project VPC (network & subnet are required). Requires configuring Private Service Access. * Shared VPC (network & subnet are required). Requires configuring Private Service Access.
  final String? network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final VirtualMachineConfigNicType? nicType;

  /// Optional. Reserved IP Range name is used for VPC Peering. The subnetwork allocation will use the range *name* if it's assigned. Example: managed-notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24 \ --description="Google Cloud Managed Notebooks Range 24 c" \ --network=$NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field value will be: `managed-notebooks-range-c`
  final String? reservedIpRange;

  /// Optional. Shielded VM Instance configuration settings.
  final RuntimeShieldedInstanceConfig? shieldedInstanceConfig;

  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network. A full URL or partial URI are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  final String? subnet;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String>? tags;

  /// Creates a new [VirtualMachineConfig].
  /// [acceleratorConfig] Optional. The Compute Engine accelerator configuration for this runtime.
  /// [bootImage] Optional. Boot image metadata used for runtime upgradeability.
  /// [containerImages] Optional. Use a list of container images to use as Kernels in the notebook instance.
  /// [dataDisk] Data disk option configuration settings.
  /// [encryptionConfig] Optional. Encryption settings for virtual machine data disk.
  /// [internalIpOnly] Optional. If true, runtime will only have internal IP addresses. By default, runtimes are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each vm. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all dependencies must be configured to be accessible without external IP addresses.
  /// [labels] Optional. The labels to associate with this runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [machineType] The Compute Engine machine type used for runtimes. Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`
  /// [metadata] Optional. The Compute Engine metadata entries to add to virtual machine. (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  /// [network] Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork. If neither `network` nor `subnet` is specified, the "default" network of the project is used, if it exists. A full URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default` * `projects/[project_id]/global/networks/default` Runtimes are managed resources inside Google Infrastructure. Runtimes support the following network configurations: * Google Managed Network (Network & subnet are empty) * Consumer Project VPC (network & subnet are required). Requires configuring Private Service Access. * Shared VPC (network & subnet are required). Requires configuring Private Service Access.
  /// [nicType] Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [reservedIpRange] Optional. Reserved IP Range name is used for VPC Peering. The subnetwork allocation will use the range *name* if it's assigned. Example: managed-notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24 \ --description="Google Cloud Managed Notebooks Range 24 c" \ --network=$NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field value will be: `managed-notebooks-range-c`
  /// [shieldedInstanceConfig] Optional. Shielded VM Instance configuration settings.
  /// [subnet] Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network. A full URL or partial URI are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  VirtualMachineConfig({
    this.acceleratorConfig,
    this.bootImage,
    this.containerImages,
    required this.dataDisk,
    this.encryptionConfig,
    this.internalIpOnly,
    this.labels,
    required this.machineType,
    this.metadata,
    this.network,
    this.nicType,
    this.reservedIpRange,
    this.shieldedInstanceConfig,
    this.subnet,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = acceleratorConfigValue.toMap();
    }
    final bootImageValue = bootImage;
    if (bootImageValue != null) {
      map['bootImage'] = bootImageValue;
    }
    final containerImagesValue = containerImages;
    if (containerImagesValue != null) {
      map['containerImages'] =
          pulumi.Input.encodeList<ContainerImage, Map<String, dynamic>>(
              containerImagesValue, (value) => value.toMap());
    }
    map['dataDisk'] = dataDisk.toMap();
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = encryptionConfigValue.toMap();
    }
    final internalIpOnlyValue = internalIpOnly;
    if (internalIpOnlyValue != null) {
      map['internalIpOnly'] = internalIpOnlyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
      map['nicType'] = nicTypeValue.value;
    }
    final reservedIpRangeValue = reservedIpRange;
    if (reservedIpRangeValue != null) {
      map['reservedIpRange'] = reservedIpRangeValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final subnetValue = subnet;
    if (subnetValue != null) {
      map['subnet'] = subnetValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VirtualMachineConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfig(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : RuntimeAcceleratorConfig.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      bootImage: map['bootImage'] == null
          ? null
          : (map['bootImage'] as Map).cast<String, dynamic>(),
      containerImages: map['containerImages'] == null
          ? null
          : pulumi.Input.decodeList<ContainerImage>(
              map['containerImages'],
              (value) => ContainerImage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataDisk:
          LocalDisk.fromMap((map['dataDisk'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      internalIpOnly:
          map['internalIpOnly'] == null ? null : map['internalIpOnly'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      nicType: map['nicType'] == null
          ? null
          : VirtualMachineConfigNicType.fromValue(map['nicType'] as String),
      reservedIpRange: map['reservedIpRange'] == null
          ? null
          : map['reservedIpRange'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : RuntimeShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
