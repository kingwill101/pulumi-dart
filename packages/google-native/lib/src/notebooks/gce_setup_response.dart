// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_notebooks_v2.dart';
import 'boot_disk_response.dart';
import 'container_image_response_notebooks_v2.dart';
import 'data_disk_response.dart';
import 'gpudriver_config_response.dart';
import 'network_interface_response.dart';
import 'service_account_response.dart';
import 'shielded_instance_config_response_notebooks_v2.dart';
import 'vm_image_response_notebooks_v2.dart';

/// The definition of how to configure a VM instance outside of Resources and Identity.
class GceSetupResponse {
  /// Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  final List<AcceleratorConfigResponseNotebooksV2> acceleratorConfigs;

  /// Optional. The boot disk for the VM.
  final BootDiskResponse bootDisk;

  /// Optional. Use a container image to start the notebook instance.
  final ContainerImageResponseNotebooksV2 containerImage;

  /// Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  final List<DataDiskResponse> dataDisks;

  /// Optional. If true, no external IP will be assigned to this VM instance.
  final bool disablePublicIp;

  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final bool enableIpForwarding;

  /// Optional. Configuration for GPU drivers.
  final GPUDriverConfigResponse gpuDriverConfig;

  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final String machineType;

  /// Optional. Custom metadata to apply to this instance.
  final Map<String, String> metadata;

  /// Optional. The network interfaces for the VM. Supports only one interface.
  final List<NetworkInterfaceResponse> networkInterfaces;

  /// Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  final List<ServiceAccountResponse> serviceAccounts;

  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final ShieldedInstanceConfigResponseNotebooksV2 shieldedInstanceConfig;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String> tags;

  /// Optional. Use a Compute Engine VM image to start the notebook instance.
  final VmImageResponseNotebooksV2 vmImage;

  /// Creates a new [GceSetupResponse].
  /// [acceleratorConfigs] Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  /// [bootDisk] Optional. The boot disk for the VM.
  /// [containerImage] Optional. Use a container image to start the notebook instance.
  /// [dataDisks] Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  /// [disablePublicIp] Optional. If true, no external IP will be assigned to this VM instance.
  /// [enableIpForwarding] Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  /// [gpuDriverConfig] Optional. Configuration for GPU drivers.
  /// [machineType] Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  /// [metadata] Optional. Custom metadata to apply to this instance.
  /// [networkInterfaces] Optional. The network interfaces for the VM. Supports only one interface.
  /// [serviceAccounts] Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// [shieldedInstanceConfig] Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [vmImage] Optional. Use a Compute Engine VM image to start the notebook instance.
  GceSetupResponse({
    required this.acceleratorConfigs,
    required this.bootDisk,
    required this.containerImage,
    required this.dataDisks,
    required this.disablePublicIp,
    required this.enableIpForwarding,
    required this.gpuDriverConfig,
    required this.machineType,
    required this.metadata,
    required this.networkInterfaces,
    required this.serviceAccounts,
    required this.shieldedInstanceConfig,
    required this.tags,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorConfigs'] = pulumi.Input.encodeList<
        AcceleratorConfigResponseNotebooksV2,
        Map<String, dynamic>>(acceleratorConfigs, (value) => value.toMap());
    map['bootDisk'] = bootDisk.toMap();
    map['containerImage'] = containerImage.toMap();
    map['dataDisks'] =
        pulumi.Input.encodeList<DataDiskResponse, Map<String, dynamic>>(
            dataDisks, (value) => value.toMap());
    map['disablePublicIp'] = disablePublicIp;
    map['enableIpForwarding'] = enableIpForwarding;
    map['gpuDriverConfig'] = gpuDriverConfig.toMap();
    map['machineType'] = machineType;
    map['metadata'] = metadata;
    map['networkInterfaces'] =
        pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(
            networkInterfaces, (value) => value.toMap());
    map['serviceAccounts'] =
        pulumi.Input.encodeList<ServiceAccountResponse, Map<String, dynamic>>(
            serviceAccounts, (value) => value.toMap());
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['tags'] = tags;
    map['vmImage'] = vmImage.toMap();
    return map;
  }

  factory GceSetupResponse.fromMap(Map<String, dynamic> map) {
    return GceSetupResponse(
      acceleratorConfigs:
          pulumi.Input.decodeList<AcceleratorConfigResponseNotebooksV2>(
              map['acceleratorConfigs'],
              (value) => AcceleratorConfigResponseNotebooksV2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDisk: BootDiskResponse.fromMap(
          (map['bootDisk'] as Map).cast<String, dynamic>()),
      containerImage: ContainerImageResponseNotebooksV2.fromMap(
          (map['containerImage'] as Map).cast<String, dynamic>()),
      dataDisks: pulumi.Input.decodeList<DataDiskResponse>(
          map['dataDisks'],
          (value) =>
              DataDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      disablePublicIp: map['disablePublicIp'] as bool,
      enableIpForwarding: map['enableIpForwarding'] as bool,
      gpuDriverConfig: GPUDriverConfigResponse.fromMap(
          (map['gpuDriverConfig'] as Map).cast<String, dynamic>()),
      machineType: map['machineType'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(
          map['networkInterfaces'],
          (value) => NetworkInterfaceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccounts: pulumi.Input.decodeList<ServiceAccountResponse>(
          map['serviceAccounts'],
          (value) => ServiceAccountResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: ShieldedInstanceConfigResponseNotebooksV2.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: (map['tags'] as List).cast<String>(),
      vmImage: VmImageResponseNotebooksV2.fromMap(
          (map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}
