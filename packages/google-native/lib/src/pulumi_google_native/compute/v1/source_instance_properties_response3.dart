// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config_response3.dart';
import 'metadata_response4.dart';
import 'network_interface_response4.dart';
import 'saved_attached_disk_response3.dart';
import 'scheduling_response3.dart';
import 'service_account_response5.dart';
import 'tags_response3.dart';

/// DEPRECATED: Please use compute#instanceProperties instead. New properties will not be added to this field.
class SourceInstancePropertiesResponse3 {
  /// Enables instances created based on this machine image to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final bool canIpForward;

  /// Whether the instance created from this machine image should be protected against deletion.
  final bool deletionProtection;

  /// An optional text description for the instances that are created from this machine image.
  final String description;

  /// An array of disks that are associated with the instances that are created from this machine image.
  final List<SavedAttachedDiskResponse3> disks;

  /// A list of guest accelerator cards' type and count to use for instances created from this machine image.
  final List<AcceleratorConfigResponse3> guestAccelerators;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final String keyRevocationActionType;

  /// Labels to apply to instances that are created from this machine image.
  final Map<String, String> labels;

  /// The machine type to use for instances that are created from this machine image.
  final String machineType;

  /// The metadata key/value pairs to assign to instances that are created from this machine image. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final MetadataResponse4 metadata;

  /// Minimum cpu/platform to be used by instances created from this machine image. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final String minCpuPlatform;

  /// An array of network access configurations for this interface.
  final List<NetworkInterfaceResponse4> networkInterfaces;

  /// Specifies the scheduling options for the instances that are created from this machine image.
  final SchedulingResponse3 scheduling;

  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from this machine image. Use metadata queries to obtain the access tokens for these instances.
  final List<ServiceAccountResponse5> serviceAccounts;

  /// A list of tags to apply to the instances that are created from this machine image. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final TagsResponse3 tags;

  SourceInstancePropertiesResponse3({
    required this.canIpForward,
    required this.deletionProtection,
    required this.description,
    required this.disks,
    required this.guestAccelerators,
    required this.keyRevocationActionType,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.minCpuPlatform,
    required this.networkInterfaces,
    required this.scheduling,
    required this.serviceAccounts,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canIpForward'] = canIpForward;
    map['deletionProtection'] = deletionProtection;
    map['description'] = description;
    map['disks'] =
        Input.encodeList<SavedAttachedDiskResponse3, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['guestAccelerators'] =
        Input.encodeList<AcceleratorConfigResponse3, Map<String, dynamic>>(
            guestAccelerators, (value) => value.toMap());
    map['keyRevocationActionType'] = keyRevocationActionType;
    map['labels'] = labels;
    map['machineType'] = machineType;
    map['metadata'] = metadata.toMap();
    map['minCpuPlatform'] = minCpuPlatform;
    map['networkInterfaces'] =
        Input.encodeList<NetworkInterfaceResponse4, Map<String, dynamic>>(
            networkInterfaces, (value) => value.toMap());
    map['scheduling'] = scheduling.toMap();
    map['serviceAccounts'] =
        Input.encodeList<ServiceAccountResponse5, Map<String, dynamic>>(
            serviceAccounts, (value) => value.toMap());
    map['tags'] = tags.toMap();
    return map;
  }

  factory SourceInstancePropertiesResponse3.fromMap(Map<String, dynamic> map) {
    return SourceInstancePropertiesResponse3(
      canIpForward: map['canIpForward'] as bool,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      disks: Input.decodeList<SavedAttachedDiskResponse3>(
          map['disks'],
          (value) => SavedAttachedDiskResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      guestAccelerators: Input.decodeList<AcceleratorConfigResponse3>(
          map['guestAccelerators'],
          (value) => AcceleratorConfigResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      keyRevocationActionType: map['keyRevocationActionType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: MetadataResponse4.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] as String,
      networkInterfaces: Input.decodeList<NetworkInterfaceResponse4>(
          map['networkInterfaces'],
          (value) => NetworkInterfaceResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      scheduling: SchedulingResponse3.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: Input.decodeList<ServiceAccountResponse5>(
          map['serviceAccounts'],
          (value) => ServiceAccountResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: TagsResponse3.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
