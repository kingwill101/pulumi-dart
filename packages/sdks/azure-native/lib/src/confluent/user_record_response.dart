// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_entity_response.dart';

/// Record of the user
class UserRecordResponse {
  /// Auth type of the user
  final String? authType;
  /// Email of the user
  final String? email;
  /// Name of the user
  final String? fullName;
  /// Id of the user
  final String? id;
  /// Type of account
  final String? kind;
  /// Metadata of the record
  final MetadataEntityResponse? metadata;

  /// Creates a new [UserRecordResponse].
  /// [authType] Auth type of the user
  /// [email] Email of the user
  /// [fullName] Name of the user
  /// [id] Id of the user
  /// [kind] Type of account
  /// [metadata] Metadata of the record
  UserRecordResponse({
    this.authType,
    this.email,
    this.fullName,
    this.id,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'email': ?email,
      'fullName': ?fullName,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory UserRecordResponse.fromMap(Map<String, dynamic> map) {
    return UserRecordResponse(
      authType: map['authType'] == null ? null : map['authType'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      fullName: map['fullName'] == null ? null : map['fullName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

