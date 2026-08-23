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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the associated VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NetworkAclArgs].
  /// [egress] Specifies an egress rule. Parameters defined below.
  /// [ingress] Specifies an ingress rule. Parameters defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of Subnet IDs to apply the ACL to
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The ID of the associated VPC.
  const NetworkAclArgs({
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
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAclEgress>(guardedValue, (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAclIngress>(guardedValue, (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
