// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A group to be updated.
class UpdateGroupResponse {
  /// Name of the group.
  /// It must match a group name of an existing fleet member.
  final pulumi.Input<String> name;

  /// Creates a new [UpdateGroupResponse].
  /// [name] Name of the group.
  UpdateGroupResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory UpdateGroupResponse.fromMap(Map<String, dynamic> map) {
    return UpdateGroupResponse(
      name: (map['name'] as String).input(),
    );
  }
}

