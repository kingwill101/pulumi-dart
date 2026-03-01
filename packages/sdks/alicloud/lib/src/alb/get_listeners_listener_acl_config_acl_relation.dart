// ignore_for_file: unused_element, unnecessary_cast


class GetListenersListenerAclConfigAclRelation {
  /// Snooping Binding of the Access Policy Group ID List.
  final String aclId;
  /// The association status between the ACL and the listener.  Valid values: `Associating`, `Associated` Or `Dissociating`. `Associating`: The ACL is being associated with the listener. `Associated`: The ACL is associated with the listener. `Dissociating`: The ACL is being disassociated from the listener.
  final String status;

  /// Creates a new [GetListenersListenerAclConfigAclRelation].
  /// [aclId] Snooping Binding of the Access Policy Group ID List.
  /// [status] The association status between the ACL and the listener.  Valid values: `Associating`, `Associated` Or `Dissociating`. `Associating`: The ACL is being associated with the listener. `Associated`: The ACL is associated with the listener. `Dissociating`: The ACL is being disassociated from the listener.
  GetListenersListenerAclConfigAclRelation({
    required this.aclId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'status': status,
    };
  }

  factory GetListenersListenerAclConfigAclRelation.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerAclConfigAclRelation(
      aclId: map['aclId'] as String,
      status: map['status'] as String,
    );
  }
}

