// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config_response2.dart';
import 'advanced_machine_features_response2.dart';
import 'attached_disk_response3.dart';
import 'confidential_instance_config_response2.dart';
import 'display_device_response2.dart';
import 'metadata_response3.dart';
import 'network_interface_response3.dart';
import 'network_performance_config_response2.dart';
import 'reservation_affinity_response2.dart';
import 'scheduling_response2.dart';
import 'service_account_response4.dart';
import 'shielded_instance_config_response2.dart';
import 'shielded_vm_config_response2.dart';
import 'tags_response2.dart';

class InstancePropertiesResponse2 {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final AdvancedMachineFeaturesResponse2 advancedMachineFeatures;

  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final bool canIpForward;

  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final ConfidentialInstanceConfigResponse2 confidentialInstanceConfig;

  /// An optional text description for the instances that are created from these properties.
  final String description;

  /// An array of disks that are associated with the instances that are created from these properties.
  final List<AttachedDiskResponse3> disks;

  /// Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  final DisplayDeviceResponse2 displayDevice;

  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final List<AcceleratorConfigResponse2> guestAccelerators;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final String keyRevocationActionType;

  /// Labels to apply to instances that are created from these properties.
  final Map<String, String> labels;

  /// The machine type to use for instances that are created from these properties.
  final String machineType;

  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final MetadataResponse3 metadata;

  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final String minCpuPlatform;

  /// An array of network access configurations for this interface.
  final List<NetworkInterfaceResponse3> networkInterfaces;

  /// Note that for MachineImage, this is not supported yet.
  final NetworkPerformanceConfigResponse2 networkPerformanceConfig;

  /// PostKeyRevocationActionType of the instance.
  final String postKeyRevocationActionType;

  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final String privateIpv6GoogleAccess;

  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final ReservationAffinityResponse2 reservationAffinity;

  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final List<String> resourcePolicies;

  /// Specifies the scheduling options for the instances that are created from these properties.
  final SchedulingResponse2 scheduling;

  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final List<ServiceAccountResponse4> serviceAccounts;

  /// Note that for MachineImage, this is not supported yet.
  final ShieldedInstanceConfigResponse2 shieldedInstanceConfig;

  /// Specifies the Shielded VM options for the instances that are created from these properties.
  final ShieldedVmConfigResponse2 shieldedVmConfig;

  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final TagsResponse2 tags;

  InstancePropertiesResponse2({
    required this.advancedMachineFeatures,
    required this.canIpForward,
    required this.confidentialInstanceConfig,
    required this.description,
    required this.disks,
    required this.displayDevice,
    required this.guestAccelerators,
    required this.keyRevocationActionType,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.minCpuPlatform,
    required this.networkInterfaces,
    required this.networkPerformanceConfig,
    required this.postKeyRevocationActionType,
    required this.privateIpv6GoogleAccess,
    required this.reservationAffinity,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.scheduling,
    required this.serviceAccounts,
    required this.shieldedInstanceConfig,
    required this.shieldedVmConfig,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedMachineFeatures'] = advancedMachineFeatures.toMap();
    map['canIpForward'] = canIpForward;
    map['confidentialInstanceConfig'] = confidentialInstanceConfig.toMap();
    map['description'] = description;
    map['disks'] =
        Input.encodeList<AttachedDiskResponse3, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['displayDevice'] = displayDevice.toMap();
    map['guestAccelerators'] =
        Input.encodeList<AcceleratorConfigResponse2, Map<String, dynamic>>(
            guestAccelerators, (value) => value.toMap());
    map['keyRevocationActionType'] = keyRevocationActionType;
    map['labels'] = labels;
    map['machineType'] = machineType;
    map['metadata'] = metadata.toMap();
    map['minCpuPlatform'] = minCpuPlatform;
    map['networkInterfaces'] =
        Input.encodeList<NetworkInterfaceResponse3, Map<String, dynamic>>(
            networkInterfaces, (value) => value.toMap());
    map['networkPerformanceConfig'] = networkPerformanceConfig.toMap();
    map['postKeyRevocationActionType'] = postKeyRevocationActionType;
    map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccess;
    map['reservationAffinity'] = reservationAffinity.toMap();
    map['resourceManagerTags'] = resourceManagerTags;
    map['resourcePolicies'] = resourcePolicies;
    map['scheduling'] = scheduling.toMap();
    map['serviceAccounts'] =
        Input.encodeList<ServiceAccountResponse4, Map<String, dynamic>>(
            serviceAccounts, (value) => value.toMap());
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['shieldedVmConfig'] = shieldedVmConfig.toMap();
    map['tags'] = tags.toMap();
    return map;
  }

  factory InstancePropertiesResponse2.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse2(
      advancedMachineFeatures: AdvancedMachineFeaturesResponse2.fromMap(
          (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      canIpForward: map['canIpForward'] as bool,
      confidentialInstanceConfig: ConfidentialInstanceConfigResponse2.fromMap(
          (map['confidentialInstanceConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      disks: Input.decodeList<AttachedDiskResponse3>(
          map['disks'],
          (value) => AttachedDiskResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      displayDevice: DisplayDeviceResponse2.fromMap(
          (map['displayDevice'] as Map).cast<String, dynamic>()),
      guestAccelerators: Input.decodeList<AcceleratorConfigResponse2>(
          map['guestAccelerators'],
          (value) => AcceleratorConfigResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      keyRevocationActionType: map['keyRevocationActionType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: MetadataResponse3.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] as String,
      networkInterfaces: Input.decodeList<NetworkInterfaceResponse3>(
          map['networkInterfaces'],
          (value) => NetworkInterfaceResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: NetworkPerformanceConfigResponse2.fromMap(
          (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      postKeyRevocationActionType: map['postKeyRevocationActionType'] as String,
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      reservationAffinity: ReservationAffinityResponse2.fromMap(
          (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      scheduling: SchedulingResponse2.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: Input.decodeList<ServiceAccountResponse4>(
          map['serviceAccounts'],
          (value) => ServiceAccountResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: ShieldedInstanceConfigResponse2.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      shieldedVmConfig: ShieldedVmConfigResponse2.fromMap(
          (map['shieldedVmConfig'] as Map).cast<String, dynamic>()),
      tags: TagsResponse2.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
