// ignore_for_file: unused_element, unnecessary_cast


/// A group to be updated.
class UpdateGroup {
  /// Name of the group.
  /// It must match a group name of an existing fleet member.
  final String name;

  /// Creates a new [UpdateGroup].
  /// [name] Name of the group.
  UpdateGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory UpdateGroup.fromMap(Map<String, dynamic> map) {
    return UpdateGroup(
      name: map['name'] as String,
    );
  }
}

