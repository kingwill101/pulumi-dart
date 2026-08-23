// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_permission_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2SecurityGroup
class AwsEc2SecurityGroupPropertiesResponse {
  /// &lt;p&gt;A description of the security group.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The ID of the security group.&lt;/p&gt;
  final pulumi.Input<String>? groupId;
  /// &lt;p&gt;The name of the security group.&lt;/p&gt;
  final pulumi.Input<String>? groupName;
  /// &lt;p&gt;The inbound rules associated with the security group.&lt;/p&gt;
  final pulumi.Input<List<IpPermissionResponse>>? ipPermissions;
  /// &lt;p&gt;The outbound rules associated with the security group.&lt;/p&gt;
  final pulumi.Input<List<IpPermissionResponse>>? ipPermissionsEgress;
  /// &lt;p&gt;The Amazon Web Services account ID of the owner of the security group.&lt;/p&gt;
  final pulumi.Input<String>? ownerId;
  /// &lt;p&gt;Any tags assigned to the security group.&lt;/p&gt;
  final pulumi.Input<List<TagResponse>>? tags;
  /// &lt;p&gt;The ID of the VPC for the security group.&lt;/p&gt;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2SecurityGroupPropertiesResponse].
  /// [description] &lt;p&gt;A description of the security group.&lt;/p&gt;
  /// [groupId] &lt;p&gt;The ID of the security group.&lt;/p&gt;
  /// [groupName] &lt;p&gt;The name of the security group.&lt;/p&gt;
  /// [ipPermissions] &lt;p&gt;The inbound rules associated with the security group.&lt;/p&gt;
  /// [ipPermissionsEgress] &lt;p&gt;The outbound rules associated with the security group.&lt;/p&gt;
  /// [ownerId] &lt;p&gt;The Amazon Web Services account ID of the owner of the security group.&lt;/p&gt;
  /// [tags] &lt;p&gt;Any tags assigned to the security group.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID of the VPC for the security group.&lt;/p&gt;
  const AwsEc2SecurityGroupPropertiesResponse({
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
      'ipPermissions': ?pulumi.Input.mapOptionalInputValue<List<IpPermissionResponse>, List<Map<String, dynamic>>>(ipPermissions, (value) => pulumi.Input.encodeList<IpPermissionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPermissionsEgress': ?pulumi.Input.mapOptionalInputValue<List<IpPermissionResponse>, List<Map<String, dynamic>>>(ipPermissionsEgress, (value) => pulumi.Input.encodeList<IpPermissionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2SecurityGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2SecurityGroupPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipPermissions: (() { final guardedValue = map['ipPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpPermissionResponse>(guardedValue, (value) => IpPermissionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipPermissionsEgress: (() { final guardedValue = map['ipPermissionsEgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpPermissionResponse>(guardedValue, (value) => IpPermissionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
