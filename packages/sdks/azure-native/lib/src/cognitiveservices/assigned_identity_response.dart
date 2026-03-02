// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type representing an identity assignment
class AssignedIdentityResponse {
  /// The client ID of the identity.
  final pulumi.Input<String> clientId;
  /// Specifies the kind of Entra identity described by this object.
  final pulumi.Input<String> kind;
  /// The principal ID of the identity.
  final pulumi.Input<String> principalId;
  /// Represents the provisioning state of an identity resource.
  final pulumi.Input<String> provisioningState;
  /// The subject of this identity assignment.
  final pulumi.Input<String>? subject;
  /// The tenant ID of the identity.
  final pulumi.Input<String> tenantId;
  /// Enumeration of identity types, from the perspective of management.
  final pulumi.Input<String> type;

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
      clientId: (map['clientId'] as String).input(),
      kind: (map['kind'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

