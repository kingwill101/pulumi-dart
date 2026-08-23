// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsEc2VPCPeeringConnection
class AwsEc2VPCPeeringConnectionProperties {
  /// Property id
  final pulumi.Input<String>? id;
  /// The AWS account ID of the owner of the accepter VPC.
  final pulumi.Input<String>? peerOwnerId;
  /// The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request.
  final pulumi.Input<String>? peerRegion;
  /// The Amazon Resource Name (ARN) of the VPC peer role for the peering connection in another AWS account.
  final pulumi.Input<String>? peerRoleArn;
  /// The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
  final pulumi.Input<String>? peerVpcId;
  /// Property tags
  final pulumi.Input<List<Tag>>? tags;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2VPCPeeringConnectionProperties].
  /// [id] Property id
  /// [peerOwnerId] The AWS account ID of the owner of the accepter VPC.
  /// [peerRegion] The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request.
  /// [peerRoleArn] The Amazon Resource Name (ARN) of the VPC peer role for the peering connection in another AWS account.
  /// [peerVpcId] The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
  /// [tags] Property tags
  /// [vpcId] The ID of the VPC.
  const AwsEc2VPCPeeringConnectionProperties({
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
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2VPCPeeringConnectionProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2VPCPeeringConnectionProperties(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerOwnerId: (() { final guardedValue = map['peerOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRegion: (() { final guardedValue = map['peerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRoleArn: (() { final guardedValue = map['peerRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVpcId: (() { final guardedValue = map['peerVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
