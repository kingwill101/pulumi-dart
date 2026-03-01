// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_get_share_network_get_share_network_args_doc}
/// Arguments for getShareNetwork.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_get_share_network_get_share_network_args_doc}
class GetShareNetworkArgs {
  /// The human-readable description of the share network.
  final pulumi.Input<String>? description;
  /// The IP version of the share network. Can either be 4 or 6.
  final pulumi.Input<int>? ipVersion;
  /// The name of the share network.
  final pulumi.Input<String>? name;
  /// The share network type. Can either be VLAN, VXLAN,
  /// GRE, or flat.
  final pulumi.Input<String>? networkType;
  /// The neutron network UUID of the share network.
  final pulumi.Input<String>? neutronNetId;
  /// The neutron subnet UUID of the share network.
  final pulumi.Input<String>? neutronSubnetId;
  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to read a share network. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The security service IDs associated with
  /// the share network.
  final pulumi.Input<String>? securityServiceId;
  /// The share network segmentation ID.
  final pulumi.Input<int>? segmentationId;

  /// Creates a new [GetShareNetworkArgs].
  /// [description] The human-readable description of the share network.
  /// [ipVersion] The IP version of the share network. Can either be 4 or 6.
  /// [name] The name of the share network.
  /// [networkType] The share network type. Can either be VLAN, VXLAN,
  /// [neutronNetId] The neutron network UUID of the share network.
  /// [neutronSubnetId] The neutron subnet UUID of the share network.
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [securityServiceId] The security service IDs associated with
  /// [segmentationId] The share network segmentation ID.
  GetShareNetworkArgs({
    String? description,
    int? ipVersion,
    String? name,
    String? networkType,
    String? neutronNetId,
    String? neutronSubnetId,
    String? region,
    String? securityServiceId,
    int? segmentationId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      neutronNetId = pulumi.Input.asOptionalInput<String>(neutronNetId),
      neutronSubnetId = pulumi.Input.asOptionalInput<String>(neutronSubnetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityServiceId = pulumi.Input.asOptionalInput<String>(securityServiceId),
      segmentationId = pulumi.Input.asOptionalInput<int>(segmentationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'networkType': ?networkType,
      'neutronNetId': ?neutronNetId,
      'neutronSubnetId': ?neutronSubnetId,
      'region': ?region,
      'securityServiceId': ?securityServiceId,
      'segmentationId': ?segmentationId,
    };
  }

  factory GetShareNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetShareNetworkArgs(
      description: map['description'] == null ? null : map['description'] as String,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      neutronNetId: map['neutronNetId'] == null ? null : map['neutronNetId'] as String,
      neutronSubnetId: map['neutronSubnetId'] == null ? null : map['neutronSubnetId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityServiceId: map['securityServiceId'] == null ? null : map['securityServiceId'] as String,
      segmentationId: map['segmentationId'] == null ? null : map['segmentationId'] as int,
    );
  }
}

