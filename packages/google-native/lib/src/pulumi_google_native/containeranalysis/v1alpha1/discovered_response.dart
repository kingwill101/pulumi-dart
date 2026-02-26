// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'analysis_completed_response2.dart';
import 'operation_response.dart';
import 'sbomstatus_response2.dart';
import 'status_response11.dart';

/// Provides information about the scan status of a discovered resource.
class DiscoveredResponse {
  /// The list of analysis that were completed for a resource.
  final AnalysisCompletedResponse2 analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<StatusResponse11> analysisError;

  /// The status of discovery for the resource.
  final String analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  final StatusResponse11 analysisStatusError;

  /// The time occurrences related to this discovery occurrence were archived.
  final String archiveTime;

  /// Whether the resource is continuously analyzed.
  final String continuousAnalysis;

  /// The CPE of the resource being scanned.
  final String cpe;

  /// The last time this resource was scanned.
  final String lastScanTime;

  /// An operation that indicates the status of the current scan. This field is deprecated, do not use.
  final OperationResponse operation;

  /// The status of an SBOM generation.
  final SBOMStatusResponse2 sbomStatus;

  DiscoveredResponse({
    required this.analysisCompleted,
    required this.analysisError,
    required this.analysisStatus,
    required this.analysisStatusError,
    required this.archiveTime,
    required this.continuousAnalysis,
    required this.cpe,
    required this.lastScanTime,
    required this.operation,
    required this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisCompleted'] = analysisCompleted.toMap();
    map['analysisError'] =
        Input.encodeList<StatusResponse11, Map<String, dynamic>>(
            analysisError, (value) => value.toMap());
    map['analysisStatus'] = analysisStatus;
    map['analysisStatusError'] = analysisStatusError.toMap();
    map['archiveTime'] = archiveTime;
    map['continuousAnalysis'] = continuousAnalysis;
    map['cpe'] = cpe;
    map['lastScanTime'] = lastScanTime;
    map['operation'] = operation.toMap();
    map['sbomStatus'] = sbomStatus.toMap();
    return map;
  }

  factory DiscoveredResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredResponse(
      analysisCompleted: AnalysisCompletedResponse2.fromMap(
          (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: Input.decodeList<StatusResponse11>(
          map['analysisError'],
          (value) =>
              StatusResponse11.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] as String,
      analysisStatusError: StatusResponse11.fromMap(
          (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      archiveTime: map['archiveTime'] as String,
      continuousAnalysis: map['continuousAnalysis'] as String,
      cpe: map['cpe'] as String,
      lastScanTime: map['lastScanTime'] as String,
      operation: OperationResponse.fromMap(
          (map['operation'] as Map).cast<String, dynamic>()),
      sbomStatus: SBOMStatusResponse2.fromMap(
          (map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
