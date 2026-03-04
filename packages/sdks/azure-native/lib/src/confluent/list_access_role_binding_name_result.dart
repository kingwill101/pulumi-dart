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
  ListAccessRoleBindingNameResult({this.data, this.kind, this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
    };
  }

  factory ListAccessRoleBindingNameResult.fromMap(Map<String, dynamic> map) {
    return ListAccessRoleBindingNameResult(
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return ConfluentListMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
