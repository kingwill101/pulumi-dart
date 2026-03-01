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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? defaultNetworkAclId,
    pulumi.Output<List<DefaultNetworkAclEgress>>? egress,
    pulumi.Output<List<DefaultNetworkAclIngress>>? ingress,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultNetworkAclId = pulumi.Input.asOptionalInput<String>(defaultNetworkAclId),
      egress = pulumi.Input.asOptionalInput<List<DefaultNetworkAclEgress>>(egress),
      ingress = pulumi.Input.asOptionalInput<List<DefaultNetworkAclIngress>>(ingress),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultNetworkAclId: map['defaultNetworkAclId'] == null ? null : pulumi.Output.create<String>(map['defaultNetworkAclId'] as String),
      egress: map['egress'] == null ? null : pulumi.Output.create<List<DefaultNetworkAclEgress>>(pulumi.Input.decodeList<DefaultNetworkAclEgress>(map['egress'], (value) => DefaultNetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<List<DefaultNetworkAclIngress>>(pulumi.Input.decodeList<DefaultNetworkAclIngress>(map['ingress'], (value) => DefaultNetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

