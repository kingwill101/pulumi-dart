// ignore_for_file: unused_element, unnecessary_cast


class ListenerAclConfigAclRelation {
  /// Snooping Binding of the Access Policy Group ID List.
  final String? aclId;
  /// The Current IP Address of the Listened State
  final String? status;

  /// Creates a new [ListenerAclConfigAclRelation].
  /// [aclId] Snooping Binding of the Access Policy Group ID List.
  /// [status] The Current IP Address of the Listened State
  ListenerAclConfigAclRelation({
    this.aclId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'status': ?status,
    };
  }

  factory ListenerAclConfigAclRelation.fromMap(Map<String, dynamic> map) {
    return ListenerAclConfigAclRelation(
      aclId: map['aclId'] == null ? null : map['aclId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

