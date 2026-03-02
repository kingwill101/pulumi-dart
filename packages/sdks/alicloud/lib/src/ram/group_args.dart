// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_ram_group_group_args_doc}
class GroupArgs {
  /// The Group comment information. The maximum length is 128 characters.
  final pulumi.Input<String>? comments;
  /// Specifies whether to force delete the Group. Default value: `false`. Valid values:
  final pulumi.Input<bool>? force;
  /// The group name. You must specify at least one of the `group_name` and `name`.
  /// It can be 1 to 64 characters in length and can contain letters, digits, periods (.), underscores (_), and dashes (-).
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? groupName;
  /// . Field 'name' has been deprecated from provider version 1.120.0. New field 'group_name' instead.
  final pulumi.Input<String>? name;

  /// Creates a new [GroupArgs].
  /// [comments] The Group comment information. The maximum length is 128 characters.
  /// [force] Specifies whether to force delete the Group. Default value: `false`. Valid values:
  /// [groupName] The group name. You must specify at least one of the `group_name` and `name`.
  /// [name] . Field 'name' has been deprecated from provider version 1.120.0. New field 'group_name' instead.
  GroupArgs({
    this.comments,
    this.force,
    this.groupName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': ?comments,
      'force': ?force,
      'groupName': ?groupName,
      'name': ?name,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      comments: map['comments'] == null ? null : (map['comments'] as String).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

