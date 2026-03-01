// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_v1.dart';
import 'advanced_machine_features_response_compute_v1.dart';
import 'attached_disk_response_compute_v1.dart';
import 'confidential_instance_config_response_compute_v1.dart';
import 'metadata_response_compute_v1.dart';
import 'network_interface_response_compute_v1.dart';
import 'network_performance_config_response_compute_v1.dart';
import 'reservation_affinity_response_compute_v1.dart';
import 'scheduling_response_compute_v1.dart';
import 'service_account_response_compute_v1.dart';
import 'shielded_instance_config_response_compute_v1.dart';
import 'tags_response_compute_v1.dart';

class InstancePropertiesResponseComputeV1 {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final AdvancedMachineFeaturesResponseComputeV1 advancedMachineFeatures;

  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final bool canIpForward;

  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final ConfidentialInstanceConfigResponseComputeV1 confidentialInstanceConfig;

  /// An optional text description for the instances that are created from these properties.
  final String description;

  /// An array of disks that are associated with the instances that are created from these properties.
  final List<AttachedDiskResponseComputeV1> disks;

  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final List<AcceleratorConfigResponseComputeV1> guestAccelerators;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final String keyRevocationActionType;

  /// Labels to apply to instances that are created from these properties.
  final Map<String, String> labels;

  /// The machine type to use for instances that are created from these properties.
  final String machineType;

  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final MetadataResponseComputeV1 metadata;

  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final String minCpuPlatform;

  /// An array of network access configurations for this interface.
  final List<NetworkInterfaceResponseComputeV1> networkInterfaces;

  /// Note that for MachineImage, this is not supported yet.
  final NetworkPerformanceConfigResponseComputeV1 networkPerformanceConfig;

  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final String privateIpv6GoogleAccess;

  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final ReservationAffinityResponseComputeV1 reservationAffinity;

  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final List<String> resourcePolicies;

  /// Specifies the scheduling options for the instances that are created from these properties.
  final SchedulingResponseComputeV1 scheduling;

  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final List<ServiceAccountResponseComputeV1> serviceAccounts;

  /// Note that for MachineImage, this is not supported yet.
  final ShieldedInstanceConfigResponseComputeV1 shieldedInstanceConfig;

  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final TagsResponseComputeV1 tags;

  /// Creates a new [InstancePropertiesResponseComputeV1].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  /// [canIpForward] Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  /// [confidentialInstanceConfig] Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  /// [description] An optional text description for the instances that are created from these properties.
  /// [disks] An array of disks that are associated with the instances that are created from these properties.
  /// [guestAccelerators] A list of guest accelerator cards' type and count to use for instances created from these properties.
  /// [keyRevocationActionType] KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  /// [labels] Labels to apply to instances that are created from these properties.
  /// [machineType] The machine type to use for instances that are created from these properties.
  /// [metadata] The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  /// [minCpuPlatform] Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  /// [networkInterfaces] An array of network access configurations for this interface.
  /// [networkPerformanceConfig] Note that for MachineImage, this is not supported yet.
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  /// [reservationAffinity] Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  /// [resourceManagerTags] Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  /// [scheduling] Specifies the scheduling options for the instances that are created from these properties.
  /// [serviceAccounts] A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  /// [shieldedInstanceConfig] Note that for MachineImage, this is not supported yet.
  /// [tags] A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  InstancePropertiesResponseComputeV1({
    required this.advancedMachineFeatures,
    required this.canIpForward,
    required this.confidentialInstanceConfig,
    required this.description,
    required this.disks,
    required this.guestAccelerators,
    required this.keyRevocationActionType,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.minCpuPlatform,
    required this.networkInterfaces,
    required this.networkPerformanceConfig,
    required this.privateIpv6GoogleAccess,
    required this.reservationAffinity,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.scheduling,
    required this.serviceAccounts,
    required this.shieldedInstanceConfig,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': advancedMachineFeatures.toMap(),
      'canIpForward': canIpForward,
      'confidentialInstanceConfig': confidentialInstanceConfig.toMap(),
      'description': description,
      'disks':
          pulumi.Input.encodeList<
            AttachedDiskResponseComputeV1,
            Map<String, dynamic>
          >(disks, (value) => value.toMap()),
      'guestAccelerators':
          pulumi.Input.encodeList<
            AcceleratorConfigResponseComputeV1,
            Map<String, dynamic>
          >(guestAccelerators, (value) => value.toMap()),
      'keyRevocationActionType': keyRevocationActionType,
      'labels': labels,
      'machineType': machineType,
      'metadata': metadata.toMap(),
      'minCpuPlatform': minCpuPlatform,
      'networkInterfaces':
          pulumi.Input.encodeList<
            NetworkInterfaceResponseComputeV1,
            Map<String, dynamic>
          >(networkInterfaces, (value) => value.toMap()),
      'networkPerformanceConfig': networkPerformanceConfig.toMap(),
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'reservationAffinity': reservationAffinity.toMap(),
      'resourceManagerTags': resourceManagerTags,
      'resourcePolicies': resourcePolicies,
      'scheduling': scheduling.toMap(),
      'serviceAccounts':
          pulumi.Input.encodeList<
            ServiceAccountResponseComputeV1,
            Map<String, dynamic>
          >(serviceAccounts, (value) => value.toMap()),
      'shieldedInstanceConfig': shieldedInstanceConfig.toMap(),
      'tags': tags.toMap(),
    };
  }

  factory InstancePropertiesResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstancePropertiesResponseComputeV1(
      advancedMachineFeatures: AdvancedMachineFeaturesResponseComputeV1.fromMap(
        (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
      ),
      canIpForward: map['canIpForward'] as bool,
      confidentialInstanceConfig:
          ConfidentialInstanceConfigResponseComputeV1.fromMap(
            (map['confidentialInstanceConfig'] as Map).cast<String, dynamic>(),
          ),
      description: map['description'] as String,
      disks: pulumi.Input.decodeList<AttachedDiskResponseComputeV1>(
        map['disks'],
        (value) => AttachedDiskResponseComputeV1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      guestAccelerators:
          pulumi.Input.decodeList<AcceleratorConfigResponseComputeV1>(
            map['guestAccelerators'],
            (value) => AcceleratorConfigResponseComputeV1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      keyRevocationActionType: map['keyRevocationActionType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: MetadataResponseComputeV1.fromMap(
        (map['metadata'] as Map).cast<String, dynamic>(),
      ),
      minCpuPlatform: map['minCpuPlatform'] as String,
      networkInterfaces:
          pulumi.Input.decodeList<NetworkInterfaceResponseComputeV1>(
            map['networkInterfaces'],
            (value) => NetworkInterfaceResponseComputeV1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      networkPerformanceConfig:
          NetworkPerformanceConfigResponseComputeV1.fromMap(
            (map['networkPerformanceConfig'] as Map).cast<String, dynamic>(),
          ),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      reservationAffinity: ReservationAffinityResponseComputeV1.fromMap(
        (map['reservationAffinity'] as Map).cast<String, dynamic>(),
      ),
      resourceManagerTags: (map['resourceManagerTags'] as Map)
          .cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      scheduling: SchedulingResponseComputeV1.fromMap(
        (map['scheduling'] as Map).cast<String, dynamic>(),
      ),
      serviceAccounts: pulumi.Input.decodeList<ServiceAccountResponseComputeV1>(
        map['serviceAccounts'],
        (value) => ServiceAccountResponseComputeV1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      shieldedInstanceConfig: ShieldedInstanceConfigResponseComputeV1.fromMap(
        (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
      ),
      tags: TagsResponseComputeV1.fromMap(
        (map['tags'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
