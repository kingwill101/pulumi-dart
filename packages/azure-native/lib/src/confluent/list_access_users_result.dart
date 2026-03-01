// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confluent_list_metadata_response.dart';
import 'user_record_response.dart';

/// Result data returned by listAccessUsers.
class ListAccessUsersResult {
  /// Data of the users list
  final List<UserRecordResponse>? data;
  /// Type of response
  final String? kind;
  /// Metadata of the list
  final ConfluentListMetadataResponse? metadata;

  /// Creates a new [ListAccessUsersResult].
  /// [data] Data of the users list
  /// [kind] Type of response
  /// [metadata] Metadata of the list
  ListAccessUsersResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data == null ? null : pulumi.Input.encodeList<UserRecordResponse, Map<String, dynamic>>(data!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ListAccessUsersResult.fromMap(Map<String, dynamic> map) {
    return ListAccessUsersResult(
      data: map['data'] == null ? null : pulumi.Input.decodeList<UserRecordResponse>(map['data'], (value) => UserRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ConfluentListMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

