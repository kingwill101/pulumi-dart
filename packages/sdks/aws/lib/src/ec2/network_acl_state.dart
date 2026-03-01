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
    pulumi.Output<String>? arn,
    pulumi.Output<List<NetworkAclEgress>>? egress,
    pulumi.Output<List<NetworkAclIngress>>? ingress,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      egress = pulumi.Input.asOptionalInput<List<NetworkAclEgress>>(egress),
      ingress = pulumi.Input.asOptionalInput<List<NetworkAclIngress>>(ingress),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      egress: map['egress'] == null ? null : pulumi.Output.create<List<NetworkAclEgress>>(pulumi.Input.decodeList<NetworkAclEgress>(map['egress'], (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<List<NetworkAclIngress>>(pulumi.Input.decodeList<NetworkAclIngress>(map['ingress'], (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

