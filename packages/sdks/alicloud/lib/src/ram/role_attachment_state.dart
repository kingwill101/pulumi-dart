// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleAttachment resources.
class RoleAttachmentState {
  /// The list of ECS instance's IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// The name of role used to bind. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-", "_", and must not begin with a hyphen.
  final pulumi.Input<String>? roleName;

  /// Creates a new [RoleAttachmentState].
  /// [instanceIds] The list of ECS instance's IDs.
  /// [roleName] The name of role used to bind. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-", "_", and must not begin with a hyphen.
  RoleAttachmentState({
    this.instanceIds,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': ?instanceIds,
      'roleName': ?roleName,
    };
  }

  factory RoleAttachmentState.fromMap(Map<String, dynamic> map) {
    return RoleAttachmentState(
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
    );
  }
}

