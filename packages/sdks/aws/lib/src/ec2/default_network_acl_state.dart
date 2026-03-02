// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_network_acl_egress.dart';
import 'default_network_acl_ingress.dart';

/// Input properties used for looking up and filtering DefaultNetworkAcl resources.
class DefaultNetworkAclState {
  /// ARN of the Default Network ACL
  final pulumi.Input<String>? arn;
  /// Network ACL ID to manage. This attribute is exported from `aws.ec2.Vpc`, or manually found via the AWS Console.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? defaultNetworkAclId;
  /// Configuration block for an egress rule. Detailed below.
  final pulumi.Input<List<DefaultNetworkAclEgress>>? egress;
  /// Configuration block for an ingress rule. Detailed below.
  final pulumi.Input<List<DefaultNetworkAclIngress>>? ingress;
  /// ID of the AWS account that owns the Default Network ACL
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of the associated VPC
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DefaultNetworkAclState].
  /// [arn] ARN of the Default Network ACL
  /// [defaultNetworkAclId] Network ACL ID to manage. This attribute is exported from `aws.ec2.Vpc`, or manually found via the AWS Console.
  /// [egress] Configuration block for an egress rule. Detailed below.
  /// [ingress] Configuration block for an ingress rule. Detailed below.
  /// [ownerId] ID of the AWS account that owns the Default Network ACL
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] ID of the associated VPC
  DefaultNetworkAclState({
    this.arn,
    this.defaultNetworkAclId,
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
      'defaultNetworkAclId': ?defaultNetworkAclId,
      'egress': ?pulumi.Input.mapOptionalInputValue<List<DefaultNetworkAclEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<DefaultNetworkAclEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<DefaultNetworkAclIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<DefaultNetworkAclIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory DefaultNetworkAclState.fromMap(Map<String, dynamic> map) {
    return DefaultNetworkAclState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      defaultNetworkAclId: map['defaultNetworkAclId'] == null ? null : ((map['defaultNetworkAclId'] as String).input()).input(),
      egress: map['egress'] == null ? null : ((pulumi.Input.decodeList<DefaultNetworkAclEgress>(map['egress']!, (value) => DefaultNetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      ingress: map['ingress'] == null ? null : ((pulumi.Input.decodeList<DefaultNetworkAclIngress>(map['ingress']!, (value) => DefaultNetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

