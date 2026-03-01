// ignore_for_file: unused_element, unnecessary_cast


/// Principal for maintenance mode or role assignments
class PrincipalResponse {
  /// The object id associated with the principal
  final String id;
  /// The type of the object id. We currently allow users, groups, and service principals
  final String type;

  /// Creates a new [PrincipalResponse].
  /// [id] The object id associated with the principal
  /// [type] The type of the object id. We currently allow users, groups, and service principals
  PrincipalResponse({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory PrincipalResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalResponse(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}

