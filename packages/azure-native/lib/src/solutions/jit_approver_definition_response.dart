// ignore_for_file: unused_element, unnecessary_cast


/// JIT approver definition.
class JitApproverDefinitionResponse {
  /// The approver display name.
  final String? displayName;
  /// The approver service principal Id.
  final String id;
  /// The approver type.
  final String? type;

  /// Creates a new [JitApproverDefinitionResponse].
  /// [displayName] The approver display name.
  /// [id] The approver service principal Id.
  /// [type] The approver type.
  JitApproverDefinitionResponse({
    this.displayName,
    required this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': id,
      'type': ?type,
    };
  }

  factory JitApproverDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return JitApproverDefinitionResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

