// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_group_group_args_doc}
class GroupArgs {
  /// The Description of the group. The description can be up to `1024` characters long.
  final pulumi.Input<String>? description;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The Name of the group. The name must be `1` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-).
  final pulumi.Input<String> groupName;

  /// Creates a new [GroupArgs].
  /// [description] The Description of the group. The description can be up to `1024` characters long.
  /// [directoryId] The ID of the Directory.
  /// [groupName] The Name of the group. The name must be `1` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-).
  const GroupArgs({
    this.description,
    required this.directoryId,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'directoryId': directoryId,
      'groupName': groupName,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

