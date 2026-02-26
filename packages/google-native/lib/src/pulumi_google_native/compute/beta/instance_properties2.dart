// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config2.dart';
import 'advanced_machine_features2.dart';
import 'attached_disk3.dart';
import 'confidential_instance_config2.dart';
import 'display_device2.dart';
import 'instance_properties_key_revocation_action_type2.dart';
import 'instance_properties_post_key_revocation_action_type2.dart';
import 'instance_properties_private_ipv6_google_access2.dart';
import 'metadata2.dart';
import 'network_interface3.dart';
import 'network_performance_config2.dart';
import 'reservation_affinity2.dart';
import 'scheduling2.dart';
import 'service_account4.dart';
import 'shielded_instance_config2.dart';
import 'shielded_vm_config2.dart';
import 'tags2.dart';

class InstanceProperties2 {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final AdvancedMachineFeatures2? advancedMachineFeatures;

  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final bool? canIpForward;

  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final ConfidentialInstanceConfig2? confidentialInstanceConfig;

  /// An optional text description for the instances that are created from these properties.
  final String? description;

  /// An array of disks that are associated with the instances that are created from these properties.
  final List<AttachedDisk3>? disks;

  /// Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  final DisplayDevice2? displayDevice;

  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final List<AcceleratorConfig2>? guestAccelerators;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final InstancePropertiesKeyRevocationActionType2? keyRevocationActionType;

  /// Labels to apply to instances that are created from these properties.
  final Map<String, String>? labels;

  /// The machine type to use for instances that are created from these properties.
  final String? machineType;

  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final Metadata2? metadata;

  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final String? minCpuPlatform;

  /// An array of network access configurations for this interface.
  final List<NetworkInterface3>? networkInterfaces;

  /// Note that for MachineImage, this is not supported yet.
  final NetworkPerformanceConfig2? networkPerformanceConfig;

  /// PostKeyRevocationActionType of the instance.
  final InstancePropertiesPostKeyRevocationActionType2?
      postKeyRevocationActionType;

  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final InstancePropertiesPrivateIpv6GoogleAccess2? privateIpv6GoogleAccess;

  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final ReservationAffinity2? reservationAffinity;

  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String>? resourceManagerTags;

  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final List<String>? resourcePolicies;

  /// Specifies the scheduling options for the instances that are created from these properties.
  final Scheduling2? scheduling;

  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final List<ServiceAccount4>? serviceAccounts;

  /// Note that for MachineImage, this is not supported yet.
  final ShieldedInstanceConfig2? shieldedInstanceConfig;

  /// Specifies the Shielded VM options for the instances that are created from these properties.
  final ShieldedVmConfig2? shieldedVmConfig;

  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final Tags2? tags;

  InstanceProperties2({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.description,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.postKeyRevocationActionType,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.shieldedVmConfig,
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
      map['disks'] = Input.encodeList<AttachedDisk3, Map<String, dynamic>>(
          disksValue, (value) => value.toMap());
    }
    final displayDeviceValue = displayDevice;
    if (displayDeviceValue != null) {
      map['displayDevice'] = displayDeviceValue.toMap();
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] =
          Input.encodeList<AcceleratorConfig2, Map<String, dynamic>>(
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
      map['networkInterfaces'] =
          Input.encodeList<NetworkInterface3, Map<String, dynamic>>(
              networkInterfacesValue, (value) => value.toMap());
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = networkPerformanceConfigValue.toMap();
    }
    final postKeyRevocationActionTypeValue = postKeyRevocationActionType;
    if (postKeyRevocationActionTypeValue != null) {
      map['postKeyRevocationActionType'] =
          postKeyRevocationActionTypeValue.value;
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
      map['serviceAccounts'] =
          Input.encodeList<ServiceAccount4, Map<String, dynamic>>(
              serviceAccountsValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final shieldedVmConfigValue = shieldedVmConfig;
    if (shieldedVmConfigValue != null) {
      map['shieldedVmConfig'] = shieldedVmConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory InstanceProperties2.fromMap(Map<String, dynamic> map) {
    return InstanceProperties2(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : AdvancedMachineFeatures2.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      canIpForward:
          map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : ConfidentialInstanceConfig2.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      disks: map['disks'] == null
          ? null
          : Input.decodeList<AttachedDisk3>(
              map['disks'],
              (value) => AttachedDisk3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      displayDevice: map['displayDevice'] == null
          ? null
          : DisplayDevice2.fromMap(
              (map['displayDevice'] as Map).cast<String, dynamic>()),
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : Input.decodeList<AcceleratorConfig2>(
              map['guestAccelerators'],
              (value) => AcceleratorConfig2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keyRevocationActionType: map['keyRevocationActionType'] == null
          ? null
          : InstancePropertiesKeyRevocationActionType2.fromValue(
              map['keyRevocationActionType'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : Metadata2.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<NetworkInterface3>(
              map['networkInterfaces'],
              (value) => NetworkInterface3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : NetworkPerformanceConfig2.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      postKeyRevocationActionType: map['postKeyRevocationActionType'] == null
          ? null
          : InstancePropertiesPostKeyRevocationActionType2.fromValue(
              map['postKeyRevocationActionType'] as String),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : InstancePropertiesPrivateIpv6GoogleAccess2.fromValue(
              map['privateIpv6GoogleAccess'] as String),
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : ReservationAffinity2.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as List).cast<String>(),
      scheduling: map['scheduling'] == null
          ? null
          : Scheduling2.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: map['serviceAccounts'] == null
          ? null
          : Input.decodeList<ServiceAccount4>(
              map['serviceAccounts'],
              (value) => ServiceAccount4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfig2.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      shieldedVmConfig: map['shieldedVmConfig'] == null
          ? null
          : ShieldedVmConfig2.fromMap(
              (map['shieldedVmConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : Tags2.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
