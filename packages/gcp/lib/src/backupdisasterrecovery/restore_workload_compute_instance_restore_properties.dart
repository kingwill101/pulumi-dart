// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_advanced_machine_features.dart';
import 'restore_workload_compute_instance_restore_properties_allocation_affinity.dart';
import 'restore_workload_compute_instance_restore_properties_confidential_instance_config.dart';
import 'restore_workload_compute_instance_restore_properties_disk.dart';
import 'restore_workload_compute_instance_restore_properties_display_device.dart';
import 'restore_workload_compute_instance_restore_properties_guest_accelerator.dart';
import 'restore_workload_compute_instance_restore_properties_instance_encryption_key.dart';
import 'restore_workload_compute_instance_restore_properties_label.dart';
import 'restore_workload_compute_instance_restore_properties_metadata.dart';
import 'restore_workload_compute_instance_restore_properties_network_interface.dart';
import 'restore_workload_compute_instance_restore_properties_network_performance_config.dart';
import 'restore_workload_compute_instance_restore_properties_params.dart';
import 'restore_workload_compute_instance_restore_properties_scheduling.dart';
import 'restore_workload_compute_instance_restore_properties_service_account.dart';
import 'restore_workload_compute_instance_restore_properties_shielded_instance_config.dart';
import 'restore_workload_compute_instance_restore_properties_tags.dart';

class RestoreWorkloadComputeInstanceRestoreProperties {
  /// Optional. Controls for advanced machine-related behavior features.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures? advancedMachineFeatures;
  /// Optional. Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity? allocationAffinity;
  /// Optional. Allows this instance to send and receive packets with non-matching destination or source IPs.
  final bool? canIpForward;
  /// Optional. Controls Confidential compute options on the instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig? confidentialInstanceConfig;
  /// Optional. Whether the resource should be protected against deletion.
  final bool? deletionProtection;
  /// Optional. An optional description of this resource.
  final String? description;
  /// Optional. Array of disks associated with this instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesDisk>? disks;
  /// Optional. Enables display device for the instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice? displayDevice;
  /// Optional. A list of the type and count of accelerator cards attached to the instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>? guestAccelerators;
  /// Optional. Specifies the hostname of the instance.
  final String? hostname;
  /// Optional. Encrypts suspended data for an instance with a customer-managed encryption key.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey? instanceEncryptionKey;
  /// Optional. KeyRevocationActionType of the instance.
  /// Possible values are: `KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED`, `NONE`, `STOP`.
  final String? keyRevocationActionType;
  /// Optional. Labels to apply to this instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesLabel>? labels;
  /// Optional. Full or partial URL of the machine type resource to use for this instance.
  final String? machineType;
  /// Optional. This includes custom metadata and predefined keys.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesMetadata? metadata;
  /// Optional. Minimum CPU platform to use for this instance.
  final String? minCpuPlatform;
  /// Required. Name of the compute instance.
  final String name;
  /// Optional. An array of network configurations for this instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>? networkInterfaces;
  /// Optional. Configure network performance such as egress bandwidth tier.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig? networkPerformanceConfig;
  /// Input only. Additional params passed with the request.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesParams? params;
  /// Optional. The private IPv6 google access type for the VM.
  /// Possible values are: `INSTANCE_PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED`, `INHERIT_FROM_SUBNETWORK`, `ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE`, `ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE`.
  final String? privateIpv6GoogleAccess;
  /// Optional. Resource policies applied to this instance.
  final List<String>? resourcePolicies;
  /// Optional. Sets the scheduling options for this instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesScheduling? scheduling;
  /// Optional. A list of service accounts, with their specified scopes, authorized for this instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>? serviceAccounts;
  /// Optional. Controls Shielded compute options on the instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig? shieldedInstanceConfig;
  /// Optional. Tags to apply to this instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesTags? tags;

  /// Creates a new [RestoreWorkloadComputeInstanceRestoreProperties].
  /// [advancedMachineFeatures] Optional. Controls for advanced machine-related behavior features.
  /// [allocationAffinity] Optional. Specifies the reservations that this instance can consume from.
  /// [canIpForward] Optional. Allows this instance to send and receive packets with non-matching destination or source IPs.
  /// [confidentialInstanceConfig] Optional. Controls Confidential compute options on the instance.
  /// [deletionProtection] Optional. Whether the resource should be protected against deletion.
  /// [description] Optional. An optional description of this resource.
  /// [disks] Optional. Array of disks associated with this instance.
  /// [displayDevice] Optional. Enables display device for the instance.
  /// [guestAccelerators] Optional. A list of the type and count of accelerator cards attached to the instance.
  /// [hostname] Optional. Specifies the hostname of the instance.
  /// [instanceEncryptionKey] Optional. Encrypts suspended data for an instance with a customer-managed encryption key.
  /// [keyRevocationActionType] Optional. KeyRevocationActionType of the instance.
  /// [labels] Optional. Labels to apply to this instance.
  /// [machineType] Optional. Full or partial URL of the machine type resource to use for this instance.
  /// [metadata] Optional. This includes custom metadata and predefined keys.
  /// [minCpuPlatform] Optional. Minimum CPU platform to use for this instance.
  /// [name] Required. Name of the compute instance.
  /// [networkInterfaces] Optional. An array of network configurations for this instance.
  /// [networkPerformanceConfig] Optional. Configure network performance such as egress bandwidth tier.
  /// [params] Input only. Additional params passed with the request.
  /// [privateIpv6GoogleAccess] Optional. The private IPv6 google access type for the VM.
  /// [resourcePolicies] Optional. Resource policies applied to this instance.
  /// [scheduling] Optional. Sets the scheduling options for this instance.
  /// [serviceAccounts] Optional. A list of service accounts, with their specified scopes, authorized for this instance.
  /// [shieldedInstanceConfig] Optional. Controls Shielded compute options on the instance.
  /// [tags] Optional. Tags to apply to this instance.
  RestoreWorkloadComputeInstanceRestoreProperties({
    this.advancedMachineFeatures,
    this.allocationAffinity,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    required this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.privateIpv6GoogleAccess,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?advancedMachineFeatures == null ? null : advancedMachineFeatures!.toMap(),
      'allocationAffinity': ?allocationAffinity == null ? null : allocationAffinity!.toMap(),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?confidentialInstanceConfig == null ? null : confidentialInstanceConfig!.toMap(),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'disks': ?disks == null ? null : pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesDisk, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'displayDevice': ?displayDevice == null ? null : displayDevice!.toMap(),
      'guestAccelerators': ?guestAccelerators == null ? null : pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator, Map<String, dynamic>>(guestAccelerators!, (value) => value.toMap()),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?instanceEncryptionKey == null ? null : instanceEncryptionKey!.toMap(),
      'keyRevocationActionType': ?keyRevocationActionType,
      'labels': ?labels == null ? null : pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'machineType': ?machineType,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'minCpuPlatform': ?minCpuPlatform,
      'name': name,
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'networkPerformanceConfig': ?networkPerformanceConfig == null ? null : networkPerformanceConfig!.toMap(),
      'params': ?params == null ? null : params!.toMap(),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?scheduling == null ? null : scheduling!.toMap(),
      'serviceAccounts': ?serviceAccounts == null ? null : pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount, Map<String, dynamic>>(serviceAccounts!, (value) => value.toMap()),
      'shieldedInstanceConfig': ?shieldedInstanceConfig == null ? null : shieldedInstanceConfig!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory RestoreWorkloadComputeInstanceRestoreProperties.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestoreProperties(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      allocationAffinity: map['allocationAffinity'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity.fromMap((map['allocationAffinity'] as Map).cast<String, dynamic>()),
      canIpForward: map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>()),
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesDisk>(map['disks'], (value) => RestoreWorkloadComputeInstanceRestorePropertiesDisk.fromMap((value as Map).cast<String, dynamic>())),
      displayDevice: map['displayDevice'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice.fromMap((map['displayDevice'] as Map).cast<String, dynamic>()),
      guestAccelerators: map['guestAccelerators'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>(map['guestAccelerators'], (value) => RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey.fromMap((map['instanceEncryptionKey'] as Map).cast<String, dynamic>()),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : map['keyRevocationActionType'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesLabel>(map['labels'], (value) => RestoreWorkloadComputeInstanceRestorePropertiesLabel.fromMap((value as Map).cast<String, dynamic>())),
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : map['minCpuPlatform'] as String,
      name: map['name'] as String,
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>(map['networkInterfaces'], (value) => RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      params: map['params'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesParams.fromMap((map['params'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : map['privateIpv6GoogleAccess'] as String,
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies'] as List).cast<String>(),
      scheduling: map['scheduling'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: map['serviceAccounts'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>(map['serviceAccounts'], (value) => RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount.fromMap((value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : RestoreWorkloadComputeInstanceRestorePropertiesTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

