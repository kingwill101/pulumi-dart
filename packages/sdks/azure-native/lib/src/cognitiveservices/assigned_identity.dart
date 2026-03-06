// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type representing an identity assignment
class AssignedIdentity {
  /// The client ID of the identity.
  final pulumi.Input<String> clientId;
  /// Specifies the kind of Entra identity described by this object.
  final pulumi.Input<String> kind;
  /// The principal ID of the identity.
  final pulumi.Input<String> principalId;
  /// The subject of this identity assignment.
  final pulumi.Input<String>? subject;
  /// The tenant ID of the identity.
  final pulumi.Input<String> tenantId;
  /// Enumeration of identity types, from the perspective of management.
  final pulumi.Input<String> type;

  /// Creates a new [AssignedIdentity].
  /// [clientId] The client ID of the identity.
  /// [kind] Specifies the kind of Entra identity described by this object.
  /// [principalId] The principal ID of the identity.
  /// [subject] The subject of this identity assignment.
  /// [tenantId] The tenant ID of the identity.
  /// [type] Enumeration of identity types, from the perspective of management.
  const AssignedIdentity({
    required this.clientId,
    required this.kind,
    required this.principalId,
    this.subject,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'kind': kind,
      'principalId': principalId,
      'subject': ?subject,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory AssignedIdentity.fromMap(Map<String, dynamic> map) {
    return AssignedIdentity(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

