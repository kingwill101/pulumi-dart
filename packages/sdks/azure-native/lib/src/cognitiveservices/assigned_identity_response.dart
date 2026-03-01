// ignore_for_file: unused_element, unnecessary_cast


/// Type representing an identity assignment
class AssignedIdentityResponse {
  /// The client ID of the identity.
  final String clientId;
  /// Specifies the kind of Entra identity described by this object.
  final String kind;
  /// The principal ID of the identity.
  final String principalId;
  /// Represents the provisioning state of an identity resource.
  final String provisioningState;
  /// The subject of this identity assignment.
  final String? subject;
  /// The tenant ID of the identity.
  final String tenantId;
  /// Enumeration of identity types, from the perspective of management.
  final String type;

  /// Creates a new [AssignedIdentityResponse].
  /// [clientId] The client ID of the identity.
  /// [kind] Specifies the kind of Entra identity described by this object.
  /// [principalId] The principal ID of the identity.
  /// [provisioningState] Represents the provisioning state of an identity resource.
  /// [subject] The subject of this identity assignment.
  /// [tenantId] The tenant ID of the identity.
  /// [type] Enumeration of identity types, from the perspective of management.
  AssignedIdentityResponse({
    required this.clientId,
    required this.kind,
    required this.principalId,
    required this.provisioningState,
    this.subject,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'kind': kind,
      'principalId': principalId,
      'provisioningState': provisioningState,
      'subject': ?subject,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory AssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AssignedIdentityResponse(
      clientId: map['clientId'] as String,
      kind: map['kind'] as String,
      principalId: map['principalId'] as String,
      provisioningState: map['provisioningState'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

