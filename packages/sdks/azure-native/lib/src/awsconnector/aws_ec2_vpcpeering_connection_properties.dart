// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsEc2VPCPeeringConnection
class AwsEc2VPCPeeringConnectionProperties {
  /// Property id
  final String? id;
  /// The AWS account ID of the owner of the accepter VPC.
  final String? peerOwnerId;
  /// The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request.
  final String? peerRegion;
  /// The Amazon Resource Name (ARN) of the VPC peer role for the peering connection in another AWS account.
  final String? peerRoleArn;
  /// The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
  final String? peerVpcId;
  /// Property tags
  final List<Tag>? tags;
  /// The ID of the VPC.
  final String? vpcId;

  /// Creates a new [AwsEc2VPCPeeringConnectionProperties].
  /// [id] Property id
  /// [peerOwnerId] The AWS account ID of the owner of the accepter VPC.
  /// [peerRegion] The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request.
  /// [peerRoleArn] The Amazon Resource Name (ARN) of the VPC peer role for the peering connection in another AWS account.
  /// [peerVpcId] The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
  /// [tags] Property tags
  /// [vpcId] The ID of the VPC.
  AwsEc2VPCPeeringConnectionProperties({
    this.id,
    this.peerOwnerId,
    this.peerRegion,
    this.peerRoleArn,
    this.peerVpcId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'peerOwnerId': ?peerOwnerId,
      'peerRegion': ?peerRegion,
      'peerRoleArn': ?peerRoleArn,
      'peerVpcId': ?peerVpcId,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2VPCPeeringConnectionProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2VPCPeeringConnectionProperties(
      id: map['id'] == null ? null : map['id'] as String,
      peerOwnerId: map['peerOwnerId'] == null ? null : map['peerOwnerId'] as String,
      peerRegion: map['peerRegion'] == null ? null : map['peerRegion'] as String,
      peerRoleArn: map['peerRoleArn'] == null ? null : map['peerRoleArn'] as String,
      peerVpcId: map['peerVpcId'] == null ? null : map['peerVpcId'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

