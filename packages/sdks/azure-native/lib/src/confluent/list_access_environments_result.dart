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
  const ListAccessEnvironmentsResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?(() { final guardedValue = data; if (guardedValue == null) return null; return pulumi.Input.encodeList<EnvironmentRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
    };
  }

  factory ListAccessEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return ListAccessEnvironmentsResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentRecordResponse>(guardedValue, (value) => EnvironmentRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return ConfluentListMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
