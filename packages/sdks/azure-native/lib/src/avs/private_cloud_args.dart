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
  const PrivateCloudArgs({
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
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsZoneType: (() { final guardedValue = map['dnsZoneType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedNetworkBlocks: (() { final guardedValue = map['extendedNetworkBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemAssignedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identitySources: (() { final guardedValue = map['identitySources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IdentitySource>(guardedValue, (value) => IdentitySource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      internet: (() { final guardedValue = map['internet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementCluster: pulumi.Input.fromValue(ManagementCluster.fromMap((map['managementCluster']! as Map).cast<String, dynamic>())),
      networkBlock: pulumi.Input.fromValue(map['networkBlock'] as String),
      nsxtPassword: (() { final guardedValue = map['nsxtPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCloudName: (() { final guardedValue = map['privateCloudName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vcenterPassword: (() { final guardedValue = map['vcenterPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
