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
  ListAccessClustersResult({this.data, this.kind, this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?(() {
        final guardedValue = data;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ClusterRecordResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
    };
  }

  factory ListAccessClustersResult.fromMap(Map<String, dynamic> map) {
    return ListAccessClustersResult(
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ClusterRecordResponse>(
          guardedValue,
          (value) => ClusterRecordResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
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
