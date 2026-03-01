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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? innerAccess,
    pulumi.Output<String>? innerAccessPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityGroupName,
    pulumi.Output<String>? securityGroupType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      innerAccess = pulumi.Input.asOptionalInput<bool>(innerAccess),
      innerAccessPolicy = pulumi.Input.asOptionalInput<String>(innerAccessPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupName = pulumi.Input.asOptionalInput<String>(securityGroupName),
      securityGroupType = pulumi.Input.asOptionalInput<String>(securityGroupType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      innerAccess: map['innerAccess'] == null ? null : pulumi.Output.create<bool>(map['innerAccess'] as bool),
      innerAccessPolicy: map['innerAccessPolicy'] == null ? null : pulumi.Output.create<String>(map['innerAccessPolicy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupName: map['securityGroupName'] == null ? null : pulumi.Output.create<String>(map['securityGroupName'] as String),
      securityGroupType: map['securityGroupType'] == null ? null : pulumi.Output.create<String>(map['securityGroupType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

