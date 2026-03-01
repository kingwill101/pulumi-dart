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
    pulumi.Output<AvailabilityProperties>? availability,
    pulumi.Output<String>? dnsZoneType,
    pulumi.Output<Encryption>? encryption,
    pulumi.Output<List<String>>? extendedNetworkBlocks,
    pulumi.Output<SystemAssignedServiceIdentity>? identity,
    pulumi.Output<List<IdentitySource>>? identitySources,
    pulumi.Output<String>? internet,
    pulumi.Output<String>? location,
    required pulumi.Output<ManagementCluster> managementCluster,
    required pulumi.Output<String> networkBlock,
    pulumi.Output<String>? nsxtPassword,
    pulumi.Output<String>? privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<Sku> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vcenterPassword,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      availability = pulumi.Input.asOptionalInput<AvailabilityProperties>(availability),
      dnsZoneType = pulumi.Input.asOptionalInput<String>(dnsZoneType),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      extendedNetworkBlocks = pulumi.Input.asOptionalInput<List<String>>(extendedNetworkBlocks),
      identity = pulumi.Input.asOptionalInput<SystemAssignedServiceIdentity>(identity),
      identitySources = pulumi.Input.asOptionalInput<List<IdentitySource>>(identitySources),
      internet = pulumi.Input.asOptionalInput<String>(internet),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementCluster = pulumi.Input.asInput<ManagementCluster>(managementCluster),
      networkBlock = pulumi.Input.asInput<String>(networkBlock),
      nsxtPassword = pulumi.Input.asOptionalInput<String>(nsxtPassword),
      privateCloudName = pulumi.Input.asOptionalInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vcenterPassword = pulumi.Input.asOptionalInput<String>(vcenterPassword),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

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
      availability: map['availability'] == null ? null : pulumi.Output.create<AvailabilityProperties>(AvailabilityProperties.fromMap((map['availability'] as Map).cast<String, dynamic>())),
      dnsZoneType: map['dnsZoneType'] == null ? null : pulumi.Output.create<String>(map['dnsZoneType'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<Encryption>(Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      extendedNetworkBlocks: map['extendedNetworkBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['extendedNetworkBlocks'] as List).cast<String>()),
      identity: map['identity'] == null ? null : pulumi.Output.create<SystemAssignedServiceIdentity>(SystemAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      identitySources: map['identitySources'] == null ? null : pulumi.Output.create<List<IdentitySource>>(pulumi.Input.decodeList<IdentitySource>(map['identitySources'], (value) => IdentitySource.fromMap((value as Map).cast<String, dynamic>()))),
      internet: map['internet'] == null ? null : pulumi.Output.create<String>(map['internet'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementCluster: pulumi.Output.create<ManagementCluster>(ManagementCluster.fromMap((map['managementCluster'] as Map).cast<String, dynamic>())),
      networkBlock: pulumi.Output.create<String>(map['networkBlock'] as String),
      nsxtPassword: map['nsxtPassword'] == null ? null : pulumi.Output.create<String>(map['nsxtPassword'] as String),
      privateCloudName: map['privateCloudName'] == null ? null : pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vcenterPassword: map['vcenterPassword'] == null ? null : pulumi.Output.create<String>(map['vcenterPassword'] as String),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

