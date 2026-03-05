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
      'data': ?(() { final guardedValue = data; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServiceAccountRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
    };
  }

  factory ListAccessServiceAccountsResult.fromMap(Map<String, dynamic> map) {
    return ListAccessServiceAccountsResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceAccountRecordResponse>(guardedValue, (value) => ServiceAccountRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return ConfluentListMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

