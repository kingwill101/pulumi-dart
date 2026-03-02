// ignore_for_file: unused_element, unnecessary_cast

import 'confluent_list_metadata_response.dart';

/// Result data returned by listAccessRoleBindingName.
class ListAccessRoleBindingNameResult {
  /// List of role binding names
  final List<String>? data;
  /// Type of response
  final String? kind;
  /// Metadata of the list
  final ConfluentListMetadataResponse? metadata;

  /// Creates a new [ListAccessRoleBindingNameResult].
  /// [data] List of role binding names
  /// [kind] Type of response
  /// [metadata] Metadata of the list
  ListAccessRoleBindingNameResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ListAccessRoleBindingNameResult.fromMap(Map<String, dynamic> map) {
    return ListAccessRoleBindingNameResult(
      data: map['data'] == null ? null : (map['data']! as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind']! as String,
      metadata: map['metadata'] == null ? null : ConfluentListMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
    );
  }
}

