// ignore_for_file: unused_element, unnecessary_cast


/// JIT approver definition.
class JitApproverDefinition {
  /// The approver display name.
  final String? displayName;
  /// The approver service principal Id.
  final String id;
  /// The approver type.
  final String? type;

  /// Creates a new [JitApproverDefinition].
  /// [displayName] The approver display name.
  /// [id] The approver service principal Id.
  /// [type] The approver type.
  JitApproverDefinition({
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

  factory JitApproverDefinition.fromMap(Map<String, dynamic> map) {
    return JitApproverDefinition(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

