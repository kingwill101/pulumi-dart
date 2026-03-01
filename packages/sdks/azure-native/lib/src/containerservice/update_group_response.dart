// ignore_for_file: unused_element, unnecessary_cast


/// A group to be updated.
class UpdateGroupResponse {
  /// Name of the group.
  /// It must match a group name of an existing fleet member.
  final String name;

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
      name: map['name'] as String,
    );
  }
}

