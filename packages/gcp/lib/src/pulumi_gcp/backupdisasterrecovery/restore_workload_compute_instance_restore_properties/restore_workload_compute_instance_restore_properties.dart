// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_workload_compute_instance_restore_properties_advanced_machine_features/restore_workload_compute_instance_restore_properties_advanced_machine_features.dart';
import '../restore_workload_compute_instance_restore_properties_allocation_affinity/restore_workload_compute_instance_restore_properties_allocation_affinity.dart';
import '../restore_workload_compute_instance_restore_properties_confidential_instance_config/restore_workload_compute_instance_restore_properties_confidential_instance_config.dart';
import '../restore_workload_compute_instance_restore_properties_disk/restore_workload_compute_instance_restore_properties_disk.dart';
import '../restore_workload_compute_instance_restore_properties_display_device/restore_workload_compute_instance_restore_properties_display_device.dart';
import '../restore_workload_compute_instance_restore_properties_guest_accelerator/restore_workload_compute_instance_restore_properties_guest_accelerator.dart';
import '../restore_workload_compute_instance_restore_properties_instance_encryption_key/restore_workload_compute_instance_restore_properties_instance_encryption_key.dart';
import '../restore_workload_compute_instance_restore_properties_label/restore_workload_compute_instance_restore_properties_label.dart';
import '../restore_workload_compute_instance_restore_properties_metadata/restore_workload_compute_instance_restore_properties_metadata.dart';
import '../restore_workload_compute_instance_restore_properties_network_interface/restore_workload_compute_instance_restore_properties_network_interface.dart';
import '../restore_workload_compute_instance_restore_properties_network_performance_config/restore_workload_compute_instance_restore_properties_network_performance_config.dart';
import '../restore_workload_compute_instance_restore_properties_params/restore_workload_compute_instance_restore_properties_params.dart';
import '../restore_workload_compute_instance_restore_properties_scheduling/restore_workload_compute_instance_restore_properties_scheduling.dart';
import '../restore_workload_compute_instance_restore_properties_service_account/restore_workload_compute_instance_restore_properties_service_account.dart';
import '../restore_workload_compute_instance_restore_properties_shielded_instance_config/restore_workload_compute_instance_restore_properties_shielded_instance_config.dart';
import '../restore_workload_compute_instance_restore_properties_tags/restore_workload_compute_instance_restore_properties_tags.dart';

class RestoreWorkloadComputeInstanceRestoreProperties {
  /// Optional. Controls for advanced machine-related behavior features.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures?
      advancedMachineFeatures;

  /// Optional. Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity?
      allocationAffinity;

  /// Optional. Allows this instance to send and receive packets with non-matching destination or source IPs.
  final bool? canIpForward;

  /// Optional. Controls Confidential compute options on the instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig?
      confidentialInstanceConfig;

  /// Optional. Whether the resource should be protected against deletion.
  final bool? deletionProtection;

  /// Optional. An optional description of this resource.
  final String? description;

  /// Optional. Array of disks associated with this instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesDisk>? disks;

  /// Optional. Enables display device for the instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice?
      displayDevice;

  /// Optional. A list of the type and count of accelerator cards attached to the instance.
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>?
      guestAccelerators;

  /// Optional. Specifies the hostname of the instance.
  final String? hostname;

  /// Optional. Encrypts suspended data for an instance with a customer-managed encryption key.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey?
      instanceEncryptionKey;

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
  final List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>?
      networkInterfaces;

  /// Optional. Configure network performance such as egress bandwidth tier.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig?
      networkPerformanceConfig;

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
  final List<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>?
      serviceAccounts;

  /// Optional. Controls Shielded compute options on the instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig?
      shieldedInstanceConfig;

  /// Optional. Tags to apply to this instance.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesTags? tags;

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
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = advancedMachineFeaturesValue.toMap();
    }
    final allocationAffinityValue = allocationAffinity;
    if (allocationAffinityValue != null) {
      map['allocationAffinity'] = allocationAffinityValue.toMap();
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] =
          confidentialInstanceConfigValue.toMap();
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesDisk,
          Map<String, dynamic>>(disksValue, (value) => value.toMap());
    }
    final displayDeviceValue = displayDevice;
    if (displayDeviceValue != null) {
      map['displayDevice'] = displayDeviceValue.toMap();
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.encodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator,
              Map<String, dynamic>>(
          guestAcceleratorsValue, (value) => value.toMap());
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final instanceEncryptionKeyValue = instanceEncryptionKey;
    if (instanceEncryptionKeyValue != null) {
      map['instanceEncryptionKey'] = instanceEncryptionKeyValue.toMap();
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] = keyRevocationActionTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesLabel,
          Map<String, dynamic>>(labelsValue, (value) => value.toMap());
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    map['name'] = name;
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface,
              Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = networkPerformanceConfigValue.toMap();
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = paramsValue.toMap();
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = schedulingValue.toMap();
    }
    final serviceAccountsValue = serviceAccounts;
    if (serviceAccountsValue != null) {
      map['serviceAccounts'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount,
          Map<String, dynamic>>(serviceAccountsValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestoreProperties.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestoreProperties(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures
              .fromMap((map['advancedMachineFeatures'] as Map)
                  .cast<String, dynamic>()),
      allocationAffinity: map['allocationAffinity'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity
              .fromMap(
                  (map['allocationAffinity'] as Map).cast<String, dynamic>()),
      canIpForward:
          map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig
              .fromMap((map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      disks: map['disks'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesDisk>(
              map['disks'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesDisk.fromMap(
                      (value as Map).cast<String, dynamic>())),
      displayDevice: map['displayDevice'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice
              .fromMap((map['displayDevice'] as Map).cast<String, dynamic>()),
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>(
              map['guestAccelerators'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator
                      .fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      instanceEncryptionKey: map['instanceEncryptionKey'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey
              .fromMap((map['instanceEncryptionKey'] as Map)
                  .cast<String, dynamic>()),
      keyRevocationActionType: map['keyRevocationActionType'] == null
          ? null
          : map['keyRevocationActionType'] as String,
      labels: map['labels'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesLabel>(
              map['labels'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesLabel.fromMap(
                      (value as Map).cast<String, dynamic>())),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      name: map['name'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>(
              map['networkInterfaces'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface
                      .fromMap((value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig
              .fromMap((map['networkPerformanceConfig'] as Map)
                  .cast<String, dynamic>()),
      params: map['params'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesParams.fromMap(
              (map['params'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : map['privateIpv6GoogleAccess'] as String,
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as List).cast<String>(),
      scheduling: map['scheduling'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: map['serviceAccounts'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>(
              map['serviceAccounts'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount
                      .fromMap((value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig
              .fromMap((map['shieldedInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
