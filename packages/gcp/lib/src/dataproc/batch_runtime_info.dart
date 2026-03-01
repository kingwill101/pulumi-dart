// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_runtime_info_approximate_usage.dart';
import 'batch_runtime_info_current_usage.dart';

class BatchRuntimeInfo {
  /// (Output)
  /// Approximate workload resource usage, calculated when the workload completes(see [Dataproc Serverless pricing](https://cloud.google.com/dataproc-serverless/pricing))
  /// Structure is documented below.
  final List<BatchRuntimeInfoApproximateUsage>? approximateUsages;
  /// (Output)
  /// Snapshot of current workload resource usage(see [Dataproc Serverless pricing](https://cloud.google.com/dataproc-serverless/pricing))
  /// Structure is documented below.
  final List<BatchRuntimeInfoCurrentUsage>? currentUsages;
  /// (Output)
  /// A URI pointing to the location of the diagnostics tarball.
  final String? diagnosticOutputUri;
  /// (Output)
  /// Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
  final Map<String, String>? endpoints;
  /// (Output)
  /// A URI pointing to the location of the stdout and stderr of the workload.
  final String? outputUri;

  /// Creates a new [BatchRuntimeInfo].
  /// [approximateUsages] (Output)
  /// [currentUsages] (Output)
  /// [diagnosticOutputUri] (Output)
  /// [endpoints] (Output)
  /// [outputUri] (Output)
  BatchRuntimeInfo({
    this.approximateUsages,
    this.currentUsages,
    this.diagnosticOutputUri,
    this.endpoints,
    this.outputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateUsages': ?approximateUsages == null ? null : pulumi.Input.encodeList<BatchRuntimeInfoApproximateUsage, Map<String, dynamic>>(approximateUsages!, (value) => value.toMap()),
      'currentUsages': ?currentUsages == null ? null : pulumi.Input.encodeList<BatchRuntimeInfoCurrentUsage, Map<String, dynamic>>(currentUsages!, (value) => value.toMap()),
      'diagnosticOutputUri': ?diagnosticOutputUri,
      'endpoints': ?endpoints,
      'outputUri': ?outputUri,
    };
  }

  factory BatchRuntimeInfo.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfo(
      approximateUsages: map['approximateUsages'] == null ? null : pulumi.Input.decodeList<BatchRuntimeInfoApproximateUsage>(map['approximateUsages'], (value) => BatchRuntimeInfoApproximateUsage.fromMap((value as Map).cast<String, dynamic>())),
      currentUsages: map['currentUsages'] == null ? null : pulumi.Input.decodeList<BatchRuntimeInfoCurrentUsage>(map['currentUsages'], (value) => BatchRuntimeInfoCurrentUsage.fromMap((value as Map).cast<String, dynamic>())),
      diagnosticOutputUri: map['diagnosticOutputUri'] == null ? null : map['diagnosticOutputUri'] as String,
      endpoints: map['endpoints'] == null ? null : (map['endpoints'] as Map).cast<String, String>(),
      outputUri: map['outputUri'] == null ? null : map['outputUri'] as String,
    );
  }
}

