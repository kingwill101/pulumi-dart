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
  const ListAccessUsersResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?(() { final guardedValue = data; if (guardedValue == null) return null; return pulumi.Input.encodeList<UserRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
    };
  }

  factory ListAccessUsersResult.fromMap(Map<String, dynamic> map) {
    return ListAccessUsersResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserRecordResponse>(guardedValue, (value) => UserRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return ConfluentListMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

