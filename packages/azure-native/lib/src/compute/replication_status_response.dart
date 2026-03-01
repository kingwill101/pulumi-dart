// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_replication_status_response.dart';

/// This is the replication status of the gallery image version.
class ReplicationStatusResponse {
  /// This is the aggregated replication status based on all the regional replication status flags.
  final String aggregatedState;
  /// This is a summary of replication status for each region.
  final List<RegionalReplicationStatusResponse> summary;

  /// Creates a new [ReplicationStatusResponse].
  /// [aggregatedState] This is the aggregated replication status based on all the regional replication status flags.
  /// [summary] This is a summary of replication status for each region.
  ReplicationStatusResponse({
    required this.aggregatedState,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatedState': aggregatedState,
      'summary': pulumi.Input.encodeList<RegionalReplicationStatusResponse, Map<String, dynamic>>(summary, (value) => value.toMap()),
    };
  }

  factory ReplicationStatusResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationStatusResponse(
      aggregatedState: map['aggregatedState'] as String,
      summary: pulumi.Input.decodeList<RegionalReplicationStatusResponse>(map['summary'], (value) => RegionalReplicationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

