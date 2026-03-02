// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of UserIdGroupPair
class UserIdGroupPairResponse {
  /// <p>A description for the security group rule that references this user ID group pair.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*</p>
  final pulumi.Input<String>? description;
  /// <p>The ID of the security group.</p>
  final pulumi.Input<String>? groupId;
  /// <p>[Default VPC] The name of the security group. For a security group in a nondefault VPC, use the security group ID. </p> <p>For a referenced security group in another VPC, this value is not returned if the referenced security group is deleted.</p>
  final pulumi.Input<String>? groupName;
  /// <p>The status of a VPC peering connection, if applicable.</p>
  final pulumi.Input<String>? peeringStatus;
  /// <p>The ID of an Amazon Web Services account.</p> <p>For a referenced security group in another VPC, the account ID of the referenced security group is returned in the response. If the referenced security group is deleted, this value is not returned.</p>
  final pulumi.Input<String>? userId;
  /// <p>The ID of the VPC for the referenced security group, if applicable.</p>
  final pulumi.Input<String>? vpcId;
  /// <p>The ID of the VPC peering connection, if applicable.</p>
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [UserIdGroupPairResponse].
  /// [description] <p>A description for the security group rule that references this user ID group pair.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*</p>
  /// [groupId] <p>The ID of the security group.</p>
  /// [groupName] <p>[Default VPC] The name of the security group. For a security group in a nondefault VPC, use the security group ID. </p> <p>For a referenced security group in another VPC, this value is not returned if the referenced security group is deleted.</p>
  /// [peeringStatus] <p>The status of a VPC peering connection, if applicable.</p>
  /// [userId] <p>The ID of an Amazon Web Services account.</p> <p>For a referenced security group in another VPC, the account ID of the referenced security group is returned in the response. If the referenced security group is deleted, this value is not returned.</p>
  /// [vpcId] <p>The ID of the VPC for the referenced security group, if applicable.</p>
  /// [vpcPeeringConnectionId] <p>The ID of the VPC peering connection, if applicable.</p>
  UserIdGroupPairResponse({
    this.description,
    this.groupId,
    this.groupName,
    this.peeringStatus,
    this.userId,
    this.vpcId,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'peeringStatus': ?peeringStatus,
      'userId': ?userId,
      'vpcId': ?vpcId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory UserIdGroupPairResponse.fromMap(Map<String, dynamic> map) {
    return UserIdGroupPairResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      peeringStatus: map['peeringStatus'] == null ? null : (map['peeringStatus'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}

