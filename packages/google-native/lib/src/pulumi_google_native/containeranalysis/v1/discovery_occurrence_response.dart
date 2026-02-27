// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'analysis_completed_response.dart';
import 'sbomstatus_response.dart';
import 'status_response10.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrenceResponse {
  final AnalysisCompletedResponse analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<StatusResponse10> analysisError;

  /// The status of discovery for the resource.
  final String analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final StatusResponse10 analysisStatusError;

  /// The time occurrences related to this discovery occurrence were archived.
  final String archiveTime;

  /// Whether the resource is continuously analyzed.
  final String continuousAnalysis;

  /// The CPE of the resource being scanned.
  final String cpe;

  /// The last time this resource was scanned.
  final String lastScanTime;

  /// The status of an SBOM generation.
  final SBOMStatusResponse sbomStatus;

  DiscoveryOccurrenceResponse({
    required this.analysisCompleted,
    required this.analysisError,
    required this.analysisStatus,
    required this.analysisStatusError,
    required this.archiveTime,
    required this.continuousAnalysis,
    required this.cpe,
    required this.lastScanTime,
    required this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisCompleted'] = analysisCompleted.toMap();
    map['analysisError'] =
        Input.encodeList<StatusResponse10, Map<String, dynamic>>(
            analysisError, (value) => value.toMap());
    map['analysisStatus'] = analysisStatus;
    map['analysisStatusError'] = analysisStatusError.toMap();
    map['archiveTime'] = archiveTime;
    map['continuousAnalysis'] = continuousAnalysis;
    map['cpe'] = cpe;
    map['lastScanTime'] = lastScanTime;
    map['sbomStatus'] = sbomStatus.toMap();
    return map;
  }

  factory DiscoveryOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryOccurrenceResponse(
      analysisCompleted: AnalysisCompletedResponse.fromMap(
          (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: Input.decodeList<StatusResponse10>(
          map['analysisError'],
          (value) =>
              StatusResponse10.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] as String,
      analysisStatusError: StatusResponse10.fromMap(
          (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      archiveTime: map['archiveTime'] as String,
      continuousAnalysis: map['continuousAnalysis'] as String,
      cpe: map['cpe'] as String,
      lastScanTime: map['lastScanTime'] as String,
      sbomStatus: SBOMStatusResponse.fromMap(
          (map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
