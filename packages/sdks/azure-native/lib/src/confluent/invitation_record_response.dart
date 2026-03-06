// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_entity_response.dart';

/// Record of the invitation
class InvitationRecordResponse {
  /// Accepted date time of the invitation
  final pulumi.Input<String>? acceptedAt;
  /// Auth type of the user
  final pulumi.Input<String>? authType;
  /// Email of the user
  final pulumi.Input<String>? email;
  /// Expiration date time of the invitation
  final pulumi.Input<String>? expiresAt;
  /// Id of the invitation
  final pulumi.Input<String>? id;
  /// Type of account
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<MetadataEntityResponse>? metadata;
  /// Status of the invitation
  final pulumi.Input<String>? status;

  /// Creates a new [InvitationRecordResponse].
  /// [acceptedAt] Accepted date time of the invitation
  /// [authType] Auth type of the user
  /// [email] Email of the user
  /// [expiresAt] Expiration date time of the invitation
  /// [id] Id of the invitation
  /// [kind] Type of account
  /// [metadata] Metadata of the record
  /// [status] Status of the invitation
  const InvitationRecordResponse({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory InvitationRecordResponse.fromMap(Map<String, dynamic> map) {
    return InvitationRecordResponse(
      acceptedAt: (() { final guardedValue = map['acceptedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

