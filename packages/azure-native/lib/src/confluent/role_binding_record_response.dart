// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_entity_response.dart';

/// Details on principal, role name and crn pattern of a role binding
class RoleBindingRecordResponse {
  /// A CRN that specifies the scope and resource patterns necessary for the role to bind
  final String? crnPattern;
  /// Id of the role binding
  final String? id;
  /// The type of the resource.
  final String? kind;
  /// Metadata of the record
  final MetadataEntityResponse? metadata;
  /// The principal User or Group to bind the role to
  final String? principal;
  /// The name of the role to bind to the principal
  final String? roleName;

  /// Creates a new [RoleBindingRecordResponse].
  /// [crnPattern] A CRN that specifies the scope and resource patterns necessary for the role to bind
  /// [id] Id of the role binding
  /// [kind] The type of the resource.
  /// [metadata] Metadata of the record
  /// [principal] The principal User or Group to bind the role to
  /// [roleName] The name of the role to bind to the principal
  RoleBindingRecordResponse({
    this.crnPattern,
    this.id,
    this.kind,
    this.metadata,
    this.principal,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crnPattern': ?crnPattern,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'principal': ?principal,
      'roleName': ?roleName,
    };
  }

  factory RoleBindingRecordResponse.fromMap(Map<String, dynamic> map) {
    return RoleBindingRecordResponse(
      crnPattern: map['crnPattern'] == null ? null : map['crnPattern'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      principal: map['principal'] == null ? null : map['principal'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
    );
  }
}

