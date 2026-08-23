// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deny assignment principal.
class DenyAssignmentPrincipal {
  /// The object ID of the principal.
  final pulumi.Input<String>? id;
  /// The type of the principal such as user, group, servicePrincipal, etc.
  final pulumi.Input<String>? type;

  /// Creates a new [DenyAssignmentPrincipal].
  /// [id] The object ID of the principal.
  /// [type] The type of the principal such as user, group, servicePrincipal, etc.
  const DenyAssignmentPrincipal({
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'type': ?type,
    };
  }

  factory DenyAssignmentPrincipal.fromMap(Map<String, dynamic> map) {
    return DenyAssignmentPrincipal(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
