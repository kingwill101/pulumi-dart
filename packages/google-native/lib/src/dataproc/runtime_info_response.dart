// ignore_for_file: unused_element, unnecessary_cast

import 'usage_metrics_response.dart';
import 'usage_snapshot_response.dart';

/// Runtime information about workload execution.
class RuntimeInfoResponse {
  /// Approximate workload resource usage, calculated when the workload completes (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).Note: This metric calculation may change in the future, for example, to capture cumulative workload resource consumption during workload execution (see the Dataproc Serverless release notes (https://cloud.google.com/dataproc-serverless/docs/release-notes) for announcements, changes, fixes and other Dataproc developments).
  final UsageMetricsResponse approximateUsage;

  /// Snapshot of current workload resource usage.
  final UsageSnapshotResponse currentUsage;

  /// A URI pointing to the location of the diagnostics tarball.
  final String diagnosticOutputUri;

  /// Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
  final Map<String, String> endpoints;

  /// A URI pointing to the location of the stdout and stderr of the workload.
  final String outputUri;

  /// Creates a new [RuntimeInfoResponse].
  /// [approximateUsage] Approximate workload resource usage, calculated when the workload completes (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).Note: This metric calculation may change in the future, for example, to capture cumulative workload resource consumption during workload execution (see the Dataproc Serverless release notes (https://cloud.google.com/dataproc-serverless/docs/release-notes) for announcements, changes, fixes and other Dataproc developments).
  /// [currentUsage] Snapshot of current workload resource usage.
  /// [diagnosticOutputUri] A URI pointing to the location of the diagnostics tarball.
  /// [endpoints] Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
  /// [outputUri] A URI pointing to the location of the stdout and stderr of the workload.
  RuntimeInfoResponse({
    required this.approximateUsage,
    required this.currentUsage,
    required this.diagnosticOutputUri,
    required this.endpoints,
    required this.outputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approximateUsage'] = approximateUsage.toMap();
    map['currentUsage'] = currentUsage.toMap();
    map['diagnosticOutputUri'] = diagnosticOutputUri;
    map['endpoints'] = endpoints;
    map['outputUri'] = outputUri;
    return map;
  }

  factory RuntimeInfoResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeInfoResponse(
      approximateUsage: UsageMetricsResponse.fromMap(
          (map['approximateUsage'] as Map).cast<String, dynamic>()),
      currentUsage: UsageSnapshotResponse.fromMap(
          (map['currentUsage'] as Map).cast<String, dynamic>()),
      diagnosticOutputUri: map['diagnosticOutputUri'] as String,
      endpoints: (map['endpoints'] as Map).cast<String, String>(),
      outputUri: map['outputUri'] as String,
    );
  }
}
