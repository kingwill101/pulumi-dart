// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_entity_response.dart';

/// Details on principal, role name and crn pattern of a role binding
class RoleBindingRecordResponse {
  /// A CRN that specifies the scope and resource patterns necessary for the role to bind
  final pulumi.Input<String>? crnPattern;
  /// Id of the role binding
  final pulumi.Input<String>? id;
  /// The type of the resource.
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<MetadataEntityResponse>? metadata;
  /// The principal User or Group to bind the role to
  final pulumi.Input<String>? principal;
  /// The name of the role to bind to the principal
  final pulumi.Input<String>? roleName;

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
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'principal': ?principal,
      'roleName': ?roleName,
    };
  }

  factory RoleBindingRecordResponse.fromMap(Map<String, dynamic> map) {
    return RoleBindingRecordResponse(
      crnPattern: map['crnPattern'] == null ? null : (map['crnPattern'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      principal: map['principal'] == null ? null : (map['principal'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
    );
  }
}

