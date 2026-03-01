// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_entity_response.dart';

/// Record of the invitation
class InvitationRecordResponse {
  /// Accepted date time of the invitation
  final String? acceptedAt;
  /// Auth type of the user
  final String? authType;
  /// Email of the user
  final String? email;
  /// Expiration date time of the invitation
  final String? expiresAt;
  /// Id of the invitation
  final String? id;
  /// Type of account
  final String? kind;
  /// Metadata of the record
  final MetadataEntityResponse? metadata;
  /// Status of the invitation
  final String? status;

  /// Creates a new [InvitationRecordResponse].
  /// [acceptedAt] Accepted date time of the invitation
  /// [authType] Auth type of the user
  /// [email] Email of the user
  /// [expiresAt] Expiration date time of the invitation
  /// [id] Id of the invitation
  /// [kind] Type of account
  /// [metadata] Metadata of the record
  /// [status] Status of the invitation
  InvitationRecordResponse({
    this.acceptedAt,
    this.authType,
    this.email,
    this.expiresAt,
    this.id,
    this.kind,
    this.metadata,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedAt': ?acceptedAt,
      'authType': ?authType,
      'email': ?email,
      'expiresAt': ?expiresAt,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'status': ?status,
    };
  }

  factory InvitationRecordResponse.fromMap(Map<String, dynamic> map) {
    return InvitationRecordResponse(
      acceptedAt: map['acceptedAt'] == null ? null : map['acceptedAt'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      expiresAt: map['expiresAt'] == null ? null : map['expiresAt'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

