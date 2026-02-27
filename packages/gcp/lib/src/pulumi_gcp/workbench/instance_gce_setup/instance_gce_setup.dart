// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_gce_setup_accelerator_config/instance_gce_setup_accelerator_config.dart';
import '../instance_gce_setup_boot_disk/instance_gce_setup_boot_disk.dart';
import '../instance_gce_setup_confidential_instance_config/instance_gce_setup_confidential_instance_config.dart';
import '../instance_gce_setup_container_image/instance_gce_setup_container_image.dart';
import '../instance_gce_setup_data_disks/instance_gce_setup_data_disks.dart';
import '../instance_gce_setup_network_interface/instance_gce_setup_network_interface.dart';
import '../instance_gce_setup_reservation_affinity/instance_gce_setup_reservation_affinity.dart';
import '../instance_gce_setup_service_account/instance_gce_setup_service_account.dart';
import '../instance_gce_setup_shielded_instance_config/instance_gce_setup_shielded_instance_config.dart';
import '../instance_gce_setup_vm_image/instance_gce_setup_vm_image.dart';

class InstanceGceSetup {
  /// The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
  /// [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// Currently supports only one accelerator configuration.
  /// Structure is documented below.
  final List<InstanceGceSetupAcceleratorConfig>? acceleratorConfigs;

  /// The definition of a boot disk.
  /// Structure is documented below.
  final InstanceGceSetupBootDisk? bootDisk;

  /// Confidential instance configuration.
  /// Structure is documented below.
  final InstanceGceSetupConfidentialInstanceConfig? confidentialInstanceConfig;

  /// Use a container image to start the workbench instance.
  /// Structure is documented below.
  final InstanceGceSetupContainerImage? containerImage;

  /// Data disks attached to the VM instance. Currently supports only one data disk.
  /// Structure is documented below.
  final InstanceGceSetupDataDisks? dataDisks;

  /// Optional. If true, no external IP will be assigned to this VM instance.
  final bool? disablePublicIp;

  /// Optional. Flag to enable ip forwarding or not, default false/off.
  /// https://cloud.google.com/vpc/docs/using-routes#canipforward
  final bool? enableIpForwarding;

  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final String? machineType;

  /// Optional. Custom metadata to apply to this instance.
  final Map<String, String>? metadata;

  /// The network interfaces for the VM. Supports only one interface.
  /// Structure is documented below.
  final List<InstanceGceSetupNetworkInterface>? networkInterfaces;

  /// Reservations that this instance can consume from.
  /// Structure is documented below.
  final InstanceGceSetupReservationAffinity? reservationAffinity;

  /// The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// Structure is documented below.
  final List<InstanceGceSetupServiceAccount>? serviceAccounts;

  /// A set of Shielded Instance options. See [Images using supported Shielded
  /// VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// Not all combinations are valid.
  /// Structure is documented below.
  final InstanceGceSetupShieldedInstanceConfig? shieldedInstanceConfig;

  /// Optional. The Compute Engine tags to add to instance (see [Tagging
  /// instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String>? tags;

  /// Definition of a custom Compute Engine virtual machine image for starting
  /// a workbench instance with the environment installed directly on the VM.
  /// Structure is documented below.
  final InstanceGceSetupVmImage? vmImage;

  InstanceGceSetup({
    this.acceleratorConfigs,
    this.bootDisk,
    this.confidentialInstanceConfig,
    this.containerImage,
    this.dataDisks,
    this.disablePublicIp,
    this.enableIpForwarding,
    this.machineType,
    this.metadata,
    this.networkInterfaces,
    this.reservationAffinity,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigsValue = acceleratorConfigs;
    if (acceleratorConfigsValue != null) {
      map['acceleratorConfigs'] = Input.encodeList<
              InstanceGceSetupAcceleratorConfig, Map<String, dynamic>>(
          acceleratorConfigsValue, (value) => value.toMap());
    }
    final bootDiskValue = bootDisk;
    if (bootDiskValue != null) {
      map['bootDisk'] = bootDiskValue.toMap();
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] =
          confidentialInstanceConfigValue.toMap();
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = containerImageValue.toMap();
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = dataDisksValue.toMap();
    }
    final disablePublicIpValue = disablePublicIp;
    if (disablePublicIpValue != null) {
      map['disablePublicIp'] = disablePublicIpValue;
    }
    final enableIpForwardingValue = enableIpForwarding;
    if (enableIpForwardingValue != null) {
      map['enableIpForwarding'] = enableIpForwardingValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = Input.encodeList<
              InstanceGceSetupNetworkInterface, Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = reservationAffinityValue.toMap();
    }
    final serviceAccountsValue = serviceAccounts;
    if (serviceAccountsValue != null) {
      map['serviceAccounts'] = Input.encodeList<InstanceGceSetupServiceAccount,
          Map<String, dynamic>>(serviceAccountsValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vmImageValue = vmImage;
    if (vmImageValue != null) {
      map['vmImage'] = vmImageValue.toMap();
    }
    return map;
  }

  factory InstanceGceSetup.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetup(
      acceleratorConfigs: map['acceleratorConfigs'] == null
          ? null
          : Input.decodeList<InstanceGceSetupAcceleratorConfig>(
              map['acceleratorConfigs'],
              (value) => InstanceGceSetupAcceleratorConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDisk: map['bootDisk'] == null
          ? null
          : InstanceGceSetupBootDisk.fromMap(
              (map['bootDisk'] as Map).cast<String, dynamic>()),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : InstanceGceSetupConfidentialInstanceConfig.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      containerImage: map['containerImage'] == null
          ? null
          : InstanceGceSetupContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>()),
      dataDisks: map['dataDisks'] == null
          ? null
          : InstanceGceSetupDataDisks.fromMap(
              (map['dataDisks'] as Map).cast<String, dynamic>()),
      disablePublicIp: map['disablePublicIp'] == null
          ? null
          : map['disablePublicIp'] as bool,
      enableIpForwarding: map['enableIpForwarding'] == null
          ? null
          : map['enableIpForwarding'] as bool,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<InstanceGceSetupNetworkInterface>(
              map['networkInterfaces'],
              (value) => InstanceGceSetupNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : InstanceGceSetupReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      serviceAccounts: map['serviceAccounts'] == null
          ? null
          : Input.decodeList<InstanceGceSetupServiceAccount>(
              map['serviceAccounts'],
              (value) => InstanceGceSetupServiceAccount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : InstanceGceSetupShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      vmImage: map['vmImage'] == null
          ? null
          : InstanceGceSetupVmImage.fromMap(
              (map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}
