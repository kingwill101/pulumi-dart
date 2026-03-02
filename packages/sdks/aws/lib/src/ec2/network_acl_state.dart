// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_egress.dart';
import 'network_acl_ingress.dart';

/// Input properties used for looking up and filtering NetworkAcl resources.
class NetworkAclState {
  /// The ARN of the network ACL
  final pulumi.Input<String>? arn;
  /// Specifies an egress rule. Parameters defined below.
  final pulumi.Input<List<NetworkAclEgress>>? egress;
  /// Specifies an ingress rule. Parameters defined below.
  final pulumi.Input<List<NetworkAclIngress>>? ingress;
  /// The ID of the AWS account that owns the network ACL.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of Subnet IDs to apply the ACL to
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the associated VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NetworkAclState].
  /// [arn] The ARN of the network ACL
  /// [egress] Specifies an egress rule. Parameters defined below.
  /// [ingress] Specifies an ingress rule. Parameters defined below.
  /// [ownerId] The ID of the AWS account that owns the network ACL.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of Subnet IDs to apply the ACL to
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The ID of the associated VPC.
  NetworkAclState({
    this.arn,
    this.egress,
    this.ingress,
    this.ownerId,
    this.region,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'egress': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<NetworkAclEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<NetworkAclIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory NetworkAclState.fromMap(Map<String, dynamic> map) {
    return NetworkAclState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      egress: map['egress'] == null ? null : ((pulumi.Input.decodeList<NetworkAclEgress>(map['egress']!, (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      ingress: map['ingress'] == null ? null : ((pulumi.Input.decodeList<NetworkAclIngress>(map['ingress']!, (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

