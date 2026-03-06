// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of UserIdGroupPair
class UserIdGroupPair {
  /// &lt;p&gt;A description for the security group rule that references this user ID group pair.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The ID of the security group.&lt;/p&gt;
  final pulumi.Input<String>? groupId;
  /// &lt;p&gt;[Default VPC] The name of the security group. For a security group in a nondefault VPC, use the security group ID. &lt;/p&gt; &lt;p&gt;For a referenced security group in another VPC, this value is not returned if the referenced security group is deleted.&lt;/p&gt;
  final pulumi.Input<String>? groupName;
  /// &lt;p&gt;The status of a VPC peering connection, if applicable.&lt;/p&gt;
  final pulumi.Input<String>? peeringStatus;
  /// &lt;p&gt;The ID of an Amazon Web Services account.&lt;/p&gt; &lt;p&gt;For a referenced security group in another VPC, the account ID of the referenced security group is returned in the response. If the referenced security group is deleted, this value is not returned.&lt;/p&gt;
  final pulumi.Input<String>? userId;
  /// &lt;p&gt;The ID of the VPC for the referenced security group, if applicable.&lt;/p&gt;
  final pulumi.Input<String>? vpcId;
  /// &lt;p&gt;The ID of the VPC peering connection, if applicable.&lt;/p&gt;
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [UserIdGroupPair].
  /// [description] &lt;p&gt;A description for the security group rule that references this user ID group pair.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*&lt;/p&gt;
  /// [groupId] &lt;p&gt;The ID of the security group.&lt;/p&gt;
  /// [groupName] &lt;p&gt;[Default VPC] The name of the security group. For a security group in a nondefault VPC, use the security group ID. &lt;/p&gt; &lt;p&gt;For a referenced security group in another VPC, this value is not returned if the referenced security group is deleted.&lt;/p&gt;
  /// [peeringStatus] &lt;p&gt;The status of a VPC peering connection, if applicable.&lt;/p&gt;
  /// [userId] &lt;p&gt;The ID of an Amazon Web Services account.&lt;/p&gt; &lt;p&gt;For a referenced security group in another VPC, the account ID of the referenced security group is returned in the response. If the referenced security group is deleted, this value is not returned.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID of the VPC for the referenced security group, if applicable.&lt;/p&gt;
  /// [vpcPeeringConnectionId] &lt;p&gt;The ID of the VPC peering connection, if applicable.&lt;/p&gt;
  const UserIdGroupPair({
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

  factory UserIdGroupPair.fromMap(Map<String, dynamic> map) {
    return UserIdGroupPair(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringStatus: (() { final guardedValue = map['peeringStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

