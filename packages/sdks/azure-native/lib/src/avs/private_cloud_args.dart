// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_properties.dart';
import 'encryption.dart';
import 'identity_source.dart';
import 'management_cluster.dart';
import 'sku.dart';
import 'system_assigned_service_identity.dart';

/// {@template pulumi_avs_private_cloud_args_doc}
/// The set of arguments for PrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_avs_private_cloud_args_doc}
class PrivateCloudArgs {
  /// Properties describing how the cloud is distributed across availability zones
  final pulumi.Input<AvailabilityProperties>? availability;
  /// The type of DNS zone to use.
  final pulumi.Input<String>? dnsZoneType;
  /// Customer managed key encryption, can be enabled or disabled
  final pulumi.Input<Encryption>? encryption;
  /// Array of additional networks noncontiguous with networkBlock. Networks must be
  /// unique and non-overlapping across VNet in your subscription, on-premise, and
  /// this privateCloud networkBlock attribute. Make sure the CIDR format conforms to
  /// (A.B.C.D/X).
  final pulumi.Input<List<String>>? extendedNetworkBlocks;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// vCenter Single Sign On Identity Sources
  final pulumi.Input<List<IdentitySource>>? identitySources;
  /// Connectivity to internet is enabled or disabled
  final pulumi.Input<String>? internet;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The default cluster used for management
  final pulumi.Input<ManagementCluster> managementCluster;
  /// The block of addresses should be unique across VNet in your subscription as
  /// well as on-premise. Make sure the CIDR format is conformed to (A.B.C.D/X) where
  /// A,B,C,D are between 0 and 255, and X is between 0 and 22
  final pulumi.Input<String> networkBlock;
  /// Optionally, set the NSX-T Manager password when the private cloud is created
  final pulumi.Input<String>? nsxtPassword;
  /// Name of the private cloud
  final pulumi.Input<String>? privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Optionally, set the vCenter admin password when the private cloud is created
  final pulumi.Input<String>? vcenterPassword;
  /// Azure resource ID of the virtual network
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [PrivateCloudArgs].
  /// [availability] Properties describing how the cloud is distributed across availability zones
  /// [dnsZoneType] The type of DNS zone to use.
  /// [encryption] Customer managed key encryption, can be enabled or disabled
  /// [extendedNetworkBlocks] Array of additional networks noncontiguous with networkBlock. Networks must be
  /// [identity] The managed service identities assigned to this resource.
  /// [identitySources] vCenter Single Sign On Identity Sources
  /// [internet] Connectivity to internet is enabled or disabled
  /// [location] The geo-location where the resource lives
  /// [managementCluster] The default cluster used for management
  /// [networkBlock] The block of addresses should be unique across VNet in your subscription as
  /// [nsxtPassword] Optionally, set the NSX-T Manager password when the private cloud is created
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [tags] Resource tags.
  /// [vcenterPassword] Optionally, set the vCenter admin password when the private cloud is created
  /// [virtualNetworkId] Azure resource ID of the virtual network
  PrivateCloudArgs({
    this.availability,
    this.dnsZoneType,
    this.encryption,
    this.extendedNetworkBlocks,
    this.identity,
    this.identitySources,
    this.internet,
    this.location,
    required this.managementCluster,
    required this.networkBlock,
    this.nsxtPassword,
    this.privateCloudName,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.vcenterPassword,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?pulumi.Input.mapOptionalInputValue<AvailabilityProperties, Map<String, dynamic>>(availability, (value) => value.toMap()),
      'dnsZoneType': ?dnsZoneType,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'extendedNetworkBlocks': ?extendedNetworkBlocks,
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'identitySources': ?pulumi.Input.mapOptionalInputValue<List<IdentitySource>, List<Map<String, dynamic>>>(identitySources, (value) => pulumi.Input.encodeList<IdentitySource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internet': ?internet,
      'location': ?location,
      'managementCluster': pulumi.Input.mapInputValue<ManagementCluster, Map<String, dynamic>>(managementCluster, (value) => value.toMap()),
      'networkBlock': networkBlock,
      'nsxtPassword': ?nsxtPassword,
      'privateCloudName': ?privateCloudName,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'vcenterPassword': ?vcenterPassword,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      availability: map['availability'] == null ? null : (AvailabilityProperties.fromMap((map['availability']! as Map).cast<String, dynamic>())).input(),
      dnsZoneType: map['dnsZoneType'] == null ? null : (map['dnsZoneType']! as String).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      extendedNetworkBlocks: map['extendedNetworkBlocks'] == null ? null : ((map['extendedNetworkBlocks']! as List).cast<String>()).input(),
      identity: map['identity'] == null ? null : (SystemAssignedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      identitySources: map['identitySources'] == null ? null : (pulumi.Input.decodeList<IdentitySource>(map['identitySources']!, (value) => IdentitySource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internet: map['internet'] == null ? null : (map['internet']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managementCluster: (ManagementCluster.fromMap((map['managementCluster'] as Map).cast<String, dynamic>())).input(),
      networkBlock: (map['networkBlock'] as String).input(),
      nsxtPassword: map['nsxtPassword'] == null ? null : (map['nsxtPassword']! as String).input(),
      privateCloudName: map['privateCloudName'] == null ? null : (map['privateCloudName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vcenterPassword: map['vcenterPassword'] == null ? null : (map['vcenterPassword']! as String).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']! as String).input(),
    );
  }
}

