// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_egress.dart';
import 'network_acl_ingress.dart';

/// {@template pulumi_ec2_network_acl_network_acl_args_doc}
/// The set of arguments for NetworkAcl.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_acl_network_acl_args_doc}
class NetworkAclArgs {
  /// Specifies an egress rule. Parameters defined below.
  final pulumi.Input<List<NetworkAclEgress>>? egress;
  /// Specifies an ingress rule. Parameters defined below.
  final pulumi.Input<List<NetworkAclIngress>>? ingress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of Subnet IDs to apply the ACL to
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the associated VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NetworkAclArgs].
  /// [egress] Specifies an egress rule. Parameters defined below.
  /// [ingress] Specifies an ingress rule. Parameters defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of Subnet IDs to apply the ACL to
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The ID of the associated VPC.
  NetworkAclArgs({
    this.egress,
    this.ingress,
    this.region,
    this.subnetIds,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egress': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<NetworkAclEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<NetworkAclIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory NetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclArgs(
      egress: map['egress'] == null ? null : (pulumi.Input.decodeList<NetworkAclEgress>(map['egress'], (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingress: map['ingress'] == null ? null : (pulumi.Input.decodeList<NetworkAclIngress>(map['ingress'], (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

