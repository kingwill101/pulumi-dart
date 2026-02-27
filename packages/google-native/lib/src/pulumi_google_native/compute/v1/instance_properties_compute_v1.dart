// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_v1.dart';
import 'advanced_machine_features_compute_v1.dart';
import 'attached_disk_compute_v1.dart';
import 'confidential_instance_config_compute_v1.dart';
import 'instance_properties_key_revocation_action_type_compute_v1.dart';
import 'instance_properties_private_ipv6_google_access_compute_v1.dart';
import 'metadata_compute_v1.dart';
import 'network_interface_compute_v1.dart';
import 'network_performance_config_compute_v1.dart';
import 'reservation_affinity_compute_v1.dart';
import 'scheduling_compute_v1.dart';
import 'service_account_compute_v1.dart';
import 'shielded_instance_config_compute_v1.dart';
import 'tags_compute_v1.dart';

class InstancePropertiesComputeV1 {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final AdvancedMachineFeaturesComputeV1? advancedMachineFeatures;

  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final bool? canIpForward;

  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final ConfidentialInstanceConfigComputeV1? confidentialInstanceConfig;

  /// An optional text description for the instances that are created from these properties.
  final String? description;

  /// An array of disks that are associated with the instances that are created from these properties.
  final List<AttachedDiskComputeV1>? disks;

  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final List<AcceleratorConfigComputeV1>? guestAccelerators;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final InstancePropertiesKeyRevocationActionTypeComputeV1?
      keyRevocationActionType;

  /// Labels to apply to instances that are created from these properties.
  final Map<String, String>? labels;

  /// The machine type to use for instances that are created from these properties.
  final String? machineType;

  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final MetadataComputeV1? metadata;

  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final String? minCpuPlatform;

  /// An array of network access configurations for this interface.
  final List<NetworkInterfaceComputeV1>? networkInterfaces;

  /// Note that for MachineImage, this is not supported yet.
  final NetworkPerformanceConfigComputeV1? networkPerformanceConfig;

  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final InstancePropertiesPrivateIpv6GoogleAccessComputeV1?
      privateIpv6GoogleAccess;

  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final ReservationAffinityComputeV1? reservationAffinity;

  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String>? resourceManagerTags;

  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final List<String>? resourcePolicies;

  /// Specifies the scheduling options for the instances that are created from these properties.
  final SchedulingComputeV1? scheduling;

  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final List<ServiceAccountComputeV1>? serviceAccounts;

  /// Note that for MachineImage, this is not supported yet.
  final ShieldedInstanceConfigComputeV1? shieldedInstanceConfig;

  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final TagsComputeV1? tags;

  InstancePropertiesComputeV1({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.description,
    this.disks,
    this.guestAccelerators,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.resourceManagerTags,
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
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] =
          confidentialInstanceConfigValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] =
          pulumi.Input.encodeList<AttachedDiskComputeV1, Map<String, dynamic>>(
              disksValue, (value) => value.toMap());
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.encodeList<
              AcceleratorConfigComputeV1, Map<String, dynamic>>(
          guestAcceleratorsValue, (value) => value.toMap());
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] = keyRevocationActionTypeValue.value;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              NetworkInterfaceComputeV1, Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = networkPerformanceConfigValue.toMap();
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue.value;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = reservationAffinityValue.toMap();
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
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
      map['serviceAccounts'] = pulumi.Input.encodeList<ServiceAccountComputeV1,
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

  factory InstancePropertiesComputeV1.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesComputeV1(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : AdvancedMachineFeaturesComputeV1.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      canIpForward:
          map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : ConfidentialInstanceConfigComputeV1.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      disks: map['disks'] == null
          ? null
          : pulumi.Input.decodeList<AttachedDiskComputeV1>(
              map['disks'],
              (value) => AttachedDiskComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<AcceleratorConfigComputeV1>(
              map['guestAccelerators'],
              (value) => AcceleratorConfigComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keyRevocationActionType: map['keyRevocationActionType'] == null
          ? null
          : InstancePropertiesKeyRevocationActionTypeComputeV1.fromValue(
              map['keyRevocationActionType'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : MetadataComputeV1.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInterfaceComputeV1>(
              map['networkInterfaces'],
              (value) => NetworkInterfaceComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : NetworkPerformanceConfigComputeV1.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : InstancePropertiesPrivateIpv6GoogleAccessComputeV1.fromValue(
              map['privateIpv6GoogleAccess'] as String),
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : ReservationAffinityComputeV1.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as List).cast<String>(),
      scheduling: map['scheduling'] == null
          ? null
          : SchedulingComputeV1.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: map['serviceAccounts'] == null
          ? null
          : pulumi.Input.decodeList<ServiceAccountComputeV1>(
              map['serviceAccounts'],
              (value) => ServiceAccountComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfigComputeV1.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : TagsComputeV1.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
