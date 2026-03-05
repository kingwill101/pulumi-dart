// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_ipam_resource_discovery_association_vpc_ipam_resource_discovery_association_args_doc}
/// The set of arguments for VpcIpamResourceDiscoveryAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_resource_discovery_association_vpc_ipam_resource_discovery_association_args_doc}
class VpcIpamResourceDiscoveryAssociationArgs {
  /// The ID of the IPAM to associate.
  final pulumi.Input<String> ipamId;
  /// The ID of the Resource Discovery to associate.
  final pulumi.Input<String> ipamResourceDiscoveryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to add to the IPAM resource discovery association resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VpcIpamResourceDiscoveryAssociationArgs].
  /// [ipamId] The ID of the IPAM to associate.
  /// [ipamResourceDiscoveryId] The ID of the Resource Discovery to associate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to add to the IPAM resource discovery association resource.
  VpcIpamResourceDiscoveryAssociationArgs({
    required this.ipamId,
    required this.ipamResourceDiscoveryId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamId': ipamId,
      'ipamResourceDiscoveryId': ipamResourceDiscoveryId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VpcIpamResourceDiscoveryAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryAssociationArgs(
      ipamId: pulumi.Input.fromValue(map['ipamId'] as String),
      ipamResourceDiscoveryId: pulumi.Input.fromValue(map['ipamResourceDiscoveryId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

