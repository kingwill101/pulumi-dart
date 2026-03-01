// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessGroup resources.
class AccessGroupState {
  /// The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  final pulumi.Input<String>? accessGroupName;
  /// The creation time of the permission group resource.
  final pulumi.Input<String>? createTime;
  /// The permission group description.  No more than 32 characters in length.
  final pulumi.Input<String>? description;
  /// The permission group type. Only VPC (VPC) is supported.
  final pulumi.Input<String>? networkType;

  /// Creates a new [AccessGroupState].
  /// [accessGroupName] The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  /// [createTime] The creation time of the permission group resource.
  /// [description] The permission group description.  No more than 32 characters in length.
  /// [networkType] The permission group type. Only VPC (VPC) is supported.
  AccessGroupState({
    pulumi.Output<String>? accessGroupName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? networkType,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      networkType = pulumi.Input.asOptionalInput<String>(networkType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'createTime': ?createTime,
      'description': ?description,
      'networkType': ?networkType,
    };
  }

  factory AccessGroupState.fromMap(Map<String, dynamic> map) {
    return AccessGroupState(
      accessGroupName: map['accessGroupName'] == null ? null : pulumi.Output.create<String>(map['accessGroupName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
    );
  }
}

