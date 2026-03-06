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
  const ListAccessRoleBindingsResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?(() { final guardedValue = data; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleBindingRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
    };
  }

  factory ListAccessRoleBindingsResult.fromMap(Map<String, dynamic> map) {
    return ListAccessRoleBindingsResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleBindingRecordResponse>(guardedValue, (value) => RoleBindingRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return ConfluentListMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

