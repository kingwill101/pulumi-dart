// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityGroup resources.
class SecurityGroupState {
  /// (Available since v1.239.0) The time when the security group was created.
  final pulumi.Input<String>? createTime;
  /// The description of the security group. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Field `inner_access` has been deprecated from provider version 1.55.3. New field `inner_access_policy` instead.
  final pulumi.Input<bool>? innerAccess;
  /// The internal access control policy of the security group. Valid values:
  /// - `Accept`: The internal interconnectivity policy.
  /// - `Drop`: The internal isolation policy.
  final pulumi.Input<String>? innerAccessPolicy;
  /// Field `name` has been deprecated from provider version 1.239.0. New field `security_group_name` instead.
  final pulumi.Input<String>? name;
  /// The ID of the resource group to which the security group belongs. **NOTE:** From version 1.115.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the security group. The name must be `2` to `128` characters in length. The name must start with a letter and cannot start with `http://` or `https://`. The name can contain Unicode characters under the Decimal Number category and the categories whose names contain Letter. The name can also contain colons (:), underscores (\_), periods (.), and hyphens (-).
  final pulumi.Input<String>? securityGroupName;
  /// The type of the security group. Default value: `normal`. Valid values:
  final pulumi.Input<String>? securityGroupType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC in which you want to create the security group.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SecurityGroupState].
  /// [createTime] (Available since v1.239.0) The time when the security group was created.
  /// [description] The description of the security group. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  /// [innerAccess] Field `inner_access` has been deprecated from provider version 1.55.3. New field `inner_access_policy` instead.
  /// [innerAccessPolicy] The internal access control policy of the security group. Valid values:
  /// [name] Field `name` has been deprecated from provider version 1.239.0. New field `security_group_name` instead.
  /// [resourceGroupId] The ID of the resource group to which the security group belongs. **NOTE:** From version 1.115.0, `resource_group_id` can be modified.
  /// [securityGroupName] The name of the security group. The name must be `2` to `128` characters in length. The name must start with a letter and cannot start with `http://` or `https://`. The name can contain Unicode characters under the Decimal Number category and the categories whose names contain Letter. The name can also contain colons (:), underscores (\_), periods (.), and hyphens (-).
  /// [securityGroupType] The type of the security group. Default value: `normal`. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC in which you want to create the security group.
  SecurityGroupState({
    this.createTime,
    this.description,
    this.innerAccess,
    this.innerAccessPolicy,
    this.name,
    this.resourceGroupId,
    this.securityGroupName,
    this.securityGroupType,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'innerAccess': ?innerAccess,
      'innerAccessPolicy': ?innerAccessPolicy,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupName': ?securityGroupName,
      'securityGroupType': ?securityGroupType,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory SecurityGroupState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      innerAccess: map['innerAccess'] == null ? null : (map['innerAccess'] as bool).input(),
      innerAccessPolicy: map['innerAccessPolicy'] == null ? null : (map['innerAccessPolicy'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityGroupName: map['securityGroupName'] == null ? null : (map['securityGroupName'] as String).input(),
      securityGroupType: map['securityGroupType'] == null ? null : (map['securityGroupType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

