// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_network_acl_association_network_acl_association_args_doc}
/// The set of arguments for NetworkAclAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_acl_association_network_acl_association_args_doc}
class NetworkAclAssociationArgs {
  /// The ID of the network ACL.
  final pulumi.Input<String> networkAclId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the associated Subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [NetworkAclAssociationArgs].
  /// [networkAclId] The ID of the network ACL.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the associated Subnet.
  NetworkAclAssociationArgs({
    required String networkAclId,
    String? region,
    required String subnetId,
  })  : networkAclId = pulumi.Input.asInput<String>(networkAclId),
        region = pulumi.Input.asOptionalInput<String>(region),
        subnetId = pulumi.Input.asInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkAclId'] = networkAclId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory NetworkAclAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclAssociationArgs(
      networkAclId: map['networkAclId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
