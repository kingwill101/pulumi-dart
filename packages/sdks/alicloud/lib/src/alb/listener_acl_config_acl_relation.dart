// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerAclConfigAclRelation {
  /// Snooping Binding of the Access Policy Group ID List.
  final pulumi.Input<String>? aclId;

  /// The Current IP Address of the Listened State
  final pulumi.Input<String>? status;

  /// Creates a new [ListenerAclConfigAclRelation].
  /// [aclId] Snooping Binding of the Access Policy Group ID List.
  /// [status] The Current IP Address of the Listened State
  ListenerAclConfigAclRelation({this.aclId, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'aclId': ?aclId, 'status': ?status};
  }

  factory ListenerAclConfigAclRelation.fromMap(Map<String, dynamic> map) {
    return ListenerAclConfigAclRelation(
      aclId: (() {
        final guardedValue = map['aclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
