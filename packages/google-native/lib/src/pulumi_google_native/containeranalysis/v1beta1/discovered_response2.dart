// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'analysis_completed_response3.dart';
import 'sbomstatus_response3.dart';
import 'status_response12.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveredResponse2 {
  final AnalysisCompletedResponse3 analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<StatusResponse12> analysisError;

  /// The status of discovery for the resource.
  final String analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final StatusResponse12 analysisStatusError;

  /// Whether the resource is continuously analyzed.
  final String continuousAnalysis;

  /// The last time continuous analysis was done for this resource. Deprecated, do not use.
  final String lastAnalysisTime;

  /// The last time this resource was scanned.
  final String lastScanTime;

  /// The status of an SBOM generation.
  final SBOMStatusResponse3 sbomStatus;

  DiscoveredResponse2({
    required this.analysisCompleted,
    required this.analysisError,
    required this.analysisStatus,
    required this.analysisStatusError,
    required this.continuousAnalysis,
    required this.lastAnalysisTime,
    required this.lastScanTime,
    required this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisCompleted'] = analysisCompleted.toMap();
    map['analysisError'] =
        Input.encodeList<StatusResponse12, Map<String, dynamic>>(
            analysisError, (value) => value.toMap());
    map['analysisStatus'] = analysisStatus;
    map['analysisStatusError'] = analysisStatusError.toMap();
    map['continuousAnalysis'] = continuousAnalysis;
    map['lastAnalysisTime'] = lastAnalysisTime;
    map['lastScanTime'] = lastScanTime;
    map['sbomStatus'] = sbomStatus.toMap();
    return map;
  }

  factory DiscoveredResponse2.fromMap(Map<String, dynamic> map) {
    return DiscoveredResponse2(
      analysisCompleted: AnalysisCompletedResponse3.fromMap(
          (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: Input.decodeList<StatusResponse12>(
          map['analysisError'],
          (value) =>
              StatusResponse12.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] as String,
      analysisStatusError: StatusResponse12.fromMap(
          (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      continuousAnalysis: map['continuousAnalysis'] as String,
      lastAnalysisTime: map['lastAnalysisTime'] as String,
      lastScanTime: map['lastScanTime'] as String,
      sbomStatus: SBOMStatusResponse3.fromMap(
          (map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
