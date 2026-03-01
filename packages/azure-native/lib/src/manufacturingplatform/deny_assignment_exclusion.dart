// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to Deny Assignment Exclusions
class DenyAssignmentExclusion {
  /// Object Id of Identity
  final String id;
  /// Type of Identity
  final String type;

  /// Creates a new [DenyAssignmentExclusion].
  /// [id] Object Id of Identity
  /// [type] Type of Identity
  DenyAssignmentExclusion({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory DenyAssignmentExclusion.fromMap(Map<String, dynamic> map) {
    return DenyAssignmentExclusion(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}

