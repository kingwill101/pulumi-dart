// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config9.dart';
import 'boot_disk.dart';
import 'container_image2.dart';
import 'data_disk.dart';
import 'gpudriver_config.dart';
import 'network_interface5.dart';
import 'service_account8.dart';
import 'shielded_instance_config9.dart';
import 'vm_image2.dart';

/// The definition of how to configure a VM instance outside of Resources and Identity.
class GceSetup {
  /// Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  final List<AcceleratorConfig9>? acceleratorConfigs;

  /// Optional. The boot disk for the VM.
  final BootDisk? bootDisk;

  /// Optional. Use a container image to start the notebook instance.
  final ContainerImage2? containerImage;

  /// Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  final List<DataDisk>? dataDisks;

  /// Optional. If true, no external IP will be assigned to this VM instance.
  final bool? disablePublicIp;

  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final bool? enableIpForwarding;

  /// Optional. Configuration for GPU drivers.
  final GPUDriverConfig? gpuDriverConfig;

  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final String? machineType;

  /// Optional. Custom metadata to apply to this instance.
  final Map<String, String>? metadata;

  /// Optional. The network interfaces for the VM. Supports only one interface.
  final List<NetworkInterface5>? networkInterfaces;

  /// Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  final List<ServiceAccount8>? serviceAccounts;

  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final ShieldedInstanceConfig9? shieldedInstanceConfig;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String>? tags;

  /// Optional. Use a Compute Engine VM image to start the notebook instance.
  final VmImage2? vmImage;

  GceSetup({
    this.acceleratorConfigs,
    this.bootDisk,
    this.containerImage,
    this.dataDisks,
    this.disablePublicIp,
    this.enableIpForwarding,
    this.gpuDriverConfig,
    this.machineType,
    this.metadata,
    this.networkInterfaces,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigsValue = acceleratorConfigs;
    if (acceleratorConfigsValue != null) {
      map['acceleratorConfigs'] =
          Input.encodeList<AcceleratorConfig9, Map<String, dynamic>>(
              acceleratorConfigsValue, (value) => value.toMap());
    }
    final bootDiskValue = bootDisk;
    if (bootDiskValue != null) {
      map['bootDisk'] = bootDiskValue.toMap();
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = containerImageValue.toMap();
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = Input.encodeList<DataDisk, Map<String, dynamic>>(
          dataDisksValue, (value) => value.toMap());
    }
    final disablePublicIpValue = disablePublicIp;
    if (disablePublicIpValue != null) {
      map['disablePublicIp'] = disablePublicIpValue;
    }
    final enableIpForwardingValue = enableIpForwarding;
    if (enableIpForwardingValue != null) {
      map['enableIpForwarding'] = enableIpForwardingValue;
    }
    final gpuDriverConfigValue = gpuDriverConfig;
    if (gpuDriverConfigValue != null) {
      map['gpuDriverConfig'] = gpuDriverConfigValue.toMap();
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
      map['networkInterfaces'] =
          Input.encodeList<NetworkInterface5, Map<String, dynamic>>(
              networkInterfacesValue, (value) => value.toMap());
    }
    final serviceAccountsValue = serviceAccounts;
    if (serviceAccountsValue != null) {
      map['serviceAccounts'] =
          Input.encodeList<ServiceAccount8, Map<String, dynamic>>(
              serviceAccountsValue, (value) => value.toMap());
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

  factory GceSetup.fromMap(Map<String, dynamic> map) {
    return GceSetup(
      acceleratorConfigs: map['acceleratorConfigs'] == null
          ? null
          : Input.decodeList<AcceleratorConfig9>(
              map['acceleratorConfigs'],
              (value) => AcceleratorConfig9.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDisk: map['bootDisk'] == null
          ? null
          : BootDisk.fromMap((map['bootDisk'] as Map).cast<String, dynamic>()),
      containerImage: map['containerImage'] == null
          ? null
          : ContainerImage2.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>()),
      dataDisks: map['dataDisks'] == null
          ? null
          : Input.decodeList<DataDisk>(
              map['dataDisks'],
              (value) =>
                  DataDisk.fromMap((value as Map).cast<String, dynamic>())),
      disablePublicIp: map['disablePublicIp'] == null
          ? null
          : map['disablePublicIp'] as bool,
      enableIpForwarding: map['enableIpForwarding'] == null
          ? null
          : map['enableIpForwarding'] as bool,
      gpuDriverConfig: map['gpuDriverConfig'] == null
          ? null
          : GPUDriverConfig.fromMap(
              (map['gpuDriverConfig'] as Map).cast<String, dynamic>()),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<NetworkInterface5>(
              map['networkInterfaces'],
              (value) => NetworkInterface5.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAccounts: map['serviceAccounts'] == null
          ? null
          : Input.decodeList<ServiceAccount8>(
              map['serviceAccounts'],
              (value) => ServiceAccount8.fromMap(
                  (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfig9.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      vmImage: map['vmImage'] == null
          ? null
          : VmImage2.fromMap((map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}
