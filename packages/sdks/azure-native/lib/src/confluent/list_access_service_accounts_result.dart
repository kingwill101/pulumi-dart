// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confluent_list_metadata_response.dart';
import 'service_account_record_response.dart';

/// Result data returned by listAccessServiceAccounts.
class ListAccessServiceAccountsResult {
  /// Data of the service accounts list
  final List<ServiceAccountRecordResponse>? data;
  /// Type of response
  final String? kind;
  /// Metadata of the list
  final ConfluentListMetadataResponse? metadata;

  /// Creates a new [ListAccessServiceAccountsResult].
  /// [data] Data of the service accounts list
  /// [kind] Type of response
  /// [metadata] Metadata of the list
  ListAccessServiceAccountsResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data == null ? null : pulumi.Input.encodeList<ServiceAccountRecordResponse, Map<String, dynamic>>(data!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ListAccessServiceAccountsResult.fromMap(Map<String, dynamic> map) {
    return ListAccessServiceAccountsResult(
      data: map['data'] == null ? null : pulumi.Input.decodeList<ServiceAccountRecordResponse>(map['data']!, (value) => ServiceAccountRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind']! as String,
      metadata: map['metadata'] == null ? null : ConfluentListMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
    );
  }
}

