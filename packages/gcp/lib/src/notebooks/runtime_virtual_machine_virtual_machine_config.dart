// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_virtual_machine_virtual_machine_config_accelerator_config.dart';
import 'runtime_virtual_machine_virtual_machine_config_container_image.dart';
import 'runtime_virtual_machine_virtual_machine_config_data_disk.dart';
import 'runtime_virtual_machine_virtual_machine_config_encryption_config.dart';
import 'runtime_virtual_machine_virtual_machine_config_shielded_instance_config.dart';

class RuntimeVirtualMachineVirtualMachineConfig {
  /// The Compute Engine accelerator configuration for this runtime.
  /// Structure is documented below.
  final RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig? acceleratorConfig;
  /// Use a list of container images to start the notebook instance.
  /// Structure is documented below.
  final List<RuntimeVirtualMachineVirtualMachineConfigContainerImage>? containerImages;
  /// Data disk option configuration settings.
  /// Structure is documented below.
  final RuntimeVirtualMachineVirtualMachineConfigDataDisk dataDisk;
  /// Encryption settings for virtual machine data disk.
  /// Structure is documented below.
  final RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig? encryptionConfig;
  /// (Output)
  /// The Compute Engine guest attributes. (see [Project and instance
  /// guest attributes](https://cloud.google.com/compute/docs/
  /// storing-retrieving-metadata#guest_attributes)).
  final Map<String, String>? guestAttributes;
  /// If true, runtime will only have internal IP addresses. By default,
  /// runtimes are not restricted to internal IP addresses, and will
  /// have ephemeral external IP addresses assigned to each vm. This
  /// `internal_ip_only` restriction can only be enabled for subnetwork
  /// enabled networks, and all dependencies must be configured to be
  /// accessible without external IP addresses.
  final bool? internalIpOnly;
  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035]
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  final Map<String, String>? labels;
  /// The Compute Engine machine type used for runtimes.
  final String machineType;
  /// The Compute Engine metadata entries to add to virtual machine.
  /// (see [Project and instance metadata](https://cloud.google.com
  /// /compute/docs/storing-retrieving-metadata#project_and_instance
  /// _metadata)).
  final Map<String, String>? metadata;
  /// The Compute Engine network to be used for machine communications.
  /// Cannot be specified with subnetwork. If neither `network` nor
  /// `subnet` is specified, the "default" network of the project is
  /// used, if it exists. A full URL or partial URI. Examples:
  /// * `https://www.googleapis.com/compute/v1/projects/[project_id]/
  /// regions/global/default`
  /// * `projects/[project_id]/regions/global/default`
  /// Runtimes are managed resources inside Google Infrastructure.
  /// Runtimes support the following network configurations:
  /// * Google Managed Network (Network & subnet are empty)
  /// * Consumer Project VPC (network & subnet are required). Requires
  /// configuring Private Service Access.
  /// * Shared VPC (network & subnet are required). Requires
  /// configuring Private Service Access.
  final String? network;
  /// The type of vNIC to be used on this interface. This may be gVNIC
  /// or VirtioNet.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  final String? nicType;
  /// Reserved IP Range name is used for VPC Peering. The
  /// subnetwork allocation will use the range *name* if it's assigned.
  final String? reservedIpRange;
  /// Shielded VM Instance configuration settings.
  /// Structure is documented below.
  final RuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig? shieldedInstanceConfig;
  /// The Compute Engine subnetwork to be used for machine
  /// communications. Cannot be specified with network. A full URL or
  /// partial URI are valid. Examples:
  /// * `https://www.googleapis.com/compute/v1/projects/[project_id]/
  /// regions/us-east1/subnetworks/sub0`
  /// * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  final String? subnet;
  /// The Compute Engine tags to add to runtime (see [Tagging instances]
  /// (https://cloud.google.com/compute/docs/
  /// label-or-tag-resources#tags)).
  final List<String>? tags;
  /// (Output)
  /// The zone where the virtual machine is located.
  final String? zone;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfig].
  /// [acceleratorConfig] The Compute Engine accelerator configuration for this runtime.
  /// [containerImages] Use a list of container images to start the notebook instance.
  /// [dataDisk] Data disk option configuration settings.
  /// [encryptionConfig] Encryption settings for virtual machine data disk.
  /// [guestAttributes] (Output)
  /// [internalIpOnly] If true, runtime will only have internal IP addresses. By default,
  /// [labels] The labels to associate with this runtime. Label **keys** must
  /// [machineType] The Compute Engine machine type used for runtimes.
  /// [metadata] The Compute Engine metadata entries to add to virtual machine.
  /// [network] The Compute Engine network to be used for machine communications.
  /// [nicType] The type of vNIC to be used on this interface. This may be gVNIC
  /// [reservedIpRange] Reserved IP Range name is used for VPC Peering. The
  /// [shieldedInstanceConfig] Shielded VM Instance configuration settings.
  /// [subnet] The Compute Engine subnetwork to be used for machine
  /// [tags] The Compute Engine tags to add to runtime (see [Tagging instances]
  /// [zone] (Output)
  RuntimeVirtualMachineVirtualMachineConfig({
    this.acceleratorConfig,
    this.containerImages,
    required this.dataDisk,
    this.encryptionConfig,
    this.guestAttributes,
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
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?acceleratorConfig == null ? null : acceleratorConfig!.toMap(),
      'containerImages': ?containerImages == null ? null : pulumi.Input.encodeList<RuntimeVirtualMachineVirtualMachineConfigContainerImage, Map<String, dynamic>>(containerImages!, (value) => value.toMap()),
      'dataDisk': dataDisk.toMap(),
      'encryptionConfig': ?encryptionConfig == null ? null : encryptionConfig!.toMap(),
      'guestAttributes': ?guestAttributes,
      'internalIpOnly': ?internalIpOnly,
      'labels': ?labels,
      'machineType': machineType,
      'metadata': ?metadata,
      'network': ?network,
      'nicType': ?nicType,
      'reservedIpRange': ?reservedIpRange,
      'shieldedInstanceConfig': ?shieldedInstanceConfig == null ? null : shieldedInstanceConfig!.toMap(),
      'subnet': ?subnet,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfig(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      containerImages: map['containerImages'] == null ? null : pulumi.Input.decodeList<RuntimeVirtualMachineVirtualMachineConfigContainerImage>(map['containerImages'], (value) => RuntimeVirtualMachineVirtualMachineConfigContainerImage.fromMap((value as Map).cast<String, dynamic>())),
      dataDisk: RuntimeVirtualMachineVirtualMachineConfigDataDisk.fromMap((map['dataDisk'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null ? null : RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      guestAttributes: map['guestAttributes'] == null ? null : (map['guestAttributes'] as Map).cast<String, String>(),
      internalIpOnly: map['internalIpOnly'] == null ? null : map['internalIpOnly'] as bool,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      reservedIpRange: map['reservedIpRange'] == null ? null : map['reservedIpRange'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : RuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

