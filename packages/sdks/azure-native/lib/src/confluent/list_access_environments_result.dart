// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confluent_list_metadata_response.dart';
import 'environment_record_response.dart';

/// Result data returned by listAccessEnvironments.
class ListAccessEnvironmentsResult {
  /// Environment list data
  final List<EnvironmentRecordResponse>? data;
  /// Type of response
  final String? kind;
  /// Metadata of the  environment list
  final ConfluentListMetadataResponse? metadata;

  /// Creates a new [ListAccessEnvironmentsResult].
  /// [data] Environment list data
  /// [kind] Type of response
  /// [metadata] Metadata of the  environment list
  ListAccessEnvironmentsResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data == null ? null : pulumi.Input.encodeList<EnvironmentRecordResponse, Map<String, dynamic>>(data!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ListAccessEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return ListAccessEnvironmentsResult(
      data: map['data'] == null ? null : pulumi.Input.decodeList<EnvironmentRecordResponse>(map['data'], (value) => EnvironmentRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ConfluentListMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

