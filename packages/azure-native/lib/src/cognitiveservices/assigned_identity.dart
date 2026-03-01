// ignore_for_file: unused_element, unnecessary_cast


/// Type representing an identity assignment
class AssignedIdentity {
  /// The client ID of the identity.
  final String clientId;
  /// Specifies the kind of Entra identity described by this object.
  final String kind;
  /// The principal ID of the identity.
  final String principalId;
  /// The subject of this identity assignment.
  final String? subject;
  /// The tenant ID of the identity.
  final String tenantId;
  /// Enumeration of identity types, from the perspective of management.
  final String type;

  /// Creates a new [AssignedIdentity].
  /// [clientId] The client ID of the identity.
  /// [kind] Specifies the kind of Entra identity described by this object.
  /// [principalId] The principal ID of the identity.
  /// [subject] The subject of this identity assignment.
  /// [tenantId] The tenant ID of the identity.
  /// [type] Enumeration of identity types, from the perspective of management.
  AssignedIdentity({
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
      clientId: map['clientId'] as String,
      kind: map['kind'] as String,
      principalId: map['principalId'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

