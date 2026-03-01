// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_record_response.dart';
import 'confluent_list_metadata_response.dart';

/// Result data returned by listAccessClusters.
class ListAccessClustersResult {
  /// List of clusters
  final List<ClusterRecordResponse>? data;
  /// Type of response
  final String? kind;
  /// Metadata of the list
  final ConfluentListMetadataResponse? metadata;

  /// Creates a new [ListAccessClustersResult].
  /// [data] List of clusters
  /// [kind] Type of response
  /// [metadata] Metadata of the list
  ListAccessClustersResult({
    this.data,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data == null ? null : pulumi.Input.encodeList<ClusterRecordResponse, Map<String, dynamic>>(data!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ListAccessClustersResult.fromMap(Map<String, dynamic> map) {
    return ListAccessClustersResult(
      data: map['data'] == null ? null : pulumi.Input.decodeList<ClusterRecordResponse>(map['data'], (value) => ClusterRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ConfluentListMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

