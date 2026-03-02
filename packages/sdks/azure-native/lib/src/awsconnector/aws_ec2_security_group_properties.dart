// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_permission.dart';
import 'tag.dart';

/// Definition of awsEc2SecurityGroup
class AwsEc2SecurityGroupProperties {
  /// <p>A description of the security group.</p>
  final pulumi.Input<String>? description;
  /// <p>The ID of the security group.</p>
  final pulumi.Input<String>? groupId;
  /// <p>The name of the security group.</p>
  final pulumi.Input<String>? groupName;
  /// <p>The inbound rules associated with the security group.</p>
  final pulumi.Input<List<IpPermission>>? ipPermissions;
  /// <p>The outbound rules associated with the security group.</p>
  final pulumi.Input<List<IpPermission>>? ipPermissionsEgress;
  /// <p>The Amazon Web Services account ID of the owner of the security group.</p>
  final pulumi.Input<String>? ownerId;
  /// <p>Any tags assigned to the security group.</p>
  final pulumi.Input<List<Tag>>? tags;
  /// <p>The ID of the VPC for the security group.</p>
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2SecurityGroupProperties].
  /// [description] <p>A description of the security group.</p>
  /// [groupId] <p>The ID of the security group.</p>
  /// [groupName] <p>The name of the security group.</p>
  /// [ipPermissions] <p>The inbound rules associated with the security group.</p>
  /// [ipPermissionsEgress] <p>The outbound rules associated with the security group.</p>
  /// [ownerId] <p>The Amazon Web Services account ID of the owner of the security group.</p>
  /// [tags] <p>Any tags assigned to the security group.</p>
  /// [vpcId] <p>The ID of the VPC for the security group.</p>
  AwsEc2SecurityGroupProperties({
    this.description,
    this.groupId,
    this.groupName,
    this.ipPermissions,
    this.ipPermissionsEgress,
    this.ownerId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'ipPermissions': ?pulumi.Input.mapOptionalInputValue<List<IpPermission>, List<Map<String, dynamic>>>(ipPermissions, (value) => pulumi.Input.encodeList<IpPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPermissionsEgress': ?pulumi.Input.mapOptionalInputValue<List<IpPermission>, List<Map<String, dynamic>>>(ipPermissionsEgress, (value) => pulumi.Input.encodeList<IpPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2SecurityGroupProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2SecurityGroupProperties(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      ipPermissions: map['ipPermissions'] == null ? null : (pulumi.Input.decodeList<IpPermission>(map['ipPermissions']!, (value) => IpPermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipPermissionsEgress: map['ipPermissionsEgress'] == null ? null : (pulumi.Input.decodeList<IpPermission>(map['ipPermissionsEgress']!, (value) => IpPermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

