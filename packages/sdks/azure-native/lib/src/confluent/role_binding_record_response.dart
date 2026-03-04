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
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataEntityResponse,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'principal': ?principal,
      'roleName': ?roleName,
    };
  }

  factory RoleBindingRecordResponse.fromMap(Map<String, dynamic> map) {
    return RoleBindingRecordResponse(
      crnPattern: (() {
        final guardedValue = map['crnPattern'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataEntityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      principal: (() {
        final guardedValue = map['principal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
