// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to Deny Assignment Exclusions
class DenyAssignmentExclusionResponse {
  /// Object Id of Identity
  final String id;
  /// Type of Identity
  final String type;

  /// Creates a new [DenyAssignmentExclusionResponse].
  /// [id] Object Id of Identity
  /// [type] Type of Identity
  DenyAssignmentExclusionResponse({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory DenyAssignmentExclusionResponse.fromMap(Map<String, dynamic> map) {
    return DenyAssignmentExclusionResponse(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}

