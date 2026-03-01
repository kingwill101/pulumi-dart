// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The Group comment information. The maximum length is 128 characters.
  final pulumi.Input<String>? comments;
  /// (Available since v1.245.0) The create time of the group.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to force delete the Group. Default value: `false`. Valid values:
  final pulumi.Input<bool>? force;
  /// The group name. You must specify at least one of the `group_name` and `name`.
  /// It can be 1 to 64 characters in length and can contain letters, digits, periods (.), underscores (_), and dashes (-).
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? groupName;
  /// . Field 'name' has been deprecated from provider version 1.120.0. New field 'group_name' instead.
  final pulumi.Input<String>? name;

  /// Creates a new [GroupState].
  /// [comments] The Group comment information. The maximum length is 128 characters.
  /// [createTime] (Available since v1.245.0) The create time of the group.
  /// [force] Specifies whether to force delete the Group. Default value: `false`. Valid values:
  /// [groupName] The group name. You must specify at least one of the `group_name` and `name`.
  /// [name] . Field 'name' has been deprecated from provider version 1.120.0. New field 'group_name' instead.
  GroupState({
    pulumi.Output<String>? comments,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? name,
  }) :
      comments = pulumi.Input.asOptionalInput<String>(comments),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      force = pulumi.Input.asOptionalInput<bool>(force),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': ?comments,
      'createTime': ?createTime,
      'force': ?force,
      'groupName': ?groupName,
      'name': ?name,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      comments: map['comments'] == null ? null : pulumi.Output.create<String>(map['comments'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

