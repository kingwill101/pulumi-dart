// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confluent_list_metadata_response.dart';
import 'role_binding_record_response.dart';

/// Result data returned by listAccessRoleBindings.
class ListAccessRoleBindingsResult {
  /// List of role binding
  final List<RoleBindingRecordResponse>? data;
  /// Type of response
  final String? kind;
  /// Metadata of the list
  final ConfluentListMetadataResponse? metadata;

  /// Creates a new [ListAccessRoleBindingsResult].
  /// [data] List of role binding
  /// [kind] Type of response
  /// [metadata] Metadata of the list
  ListAccessRoleBindingsResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data == null ? null : pulumi.Input.encodeList<RoleBindingRecordResponse, Map<String, dynamic>>(data!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ListAccessRoleBindingsResult.fromMap(Map<String, dynamic> map) {
    return ListAccessRoleBindingsResult(
      data: map['data'] == null ? null : pulumi.Input.decodeList<RoleBindingRecordResponse>(map['data'], (value) => RoleBindingRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ConfluentListMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

