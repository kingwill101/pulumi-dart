// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_entity_response.dart';

/// Record of the user
class UserRecordResponse {
  /// Auth type of the user
  final pulumi.Input<String>? authType;
  /// Email of the user
  final pulumi.Input<String>? email;
  /// Name of the user
  final pulumi.Input<String>? fullName;
  /// Id of the user
  final pulumi.Input<String>? id;
  /// Type of account
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<MetadataEntityResponse>? metadata;

  /// Creates a new [UserRecordResponse].
  /// [authType] Auth type of the user
  /// [email] Email of the user
  /// [fullName] Name of the user
  /// [id] Id of the user
  /// [kind] Type of account
  /// [metadata] Metadata of the record
  const UserRecordResponse({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory UserRecordResponse.fromMap(Map<String, dynamic> map) {
    return UserRecordResponse(
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullName: (() { final guardedValue = map['fullName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

