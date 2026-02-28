// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_response_containeranalysis_v1beta1.dart';
import 'sbomstatus_response_containeranalysis_v1beta1.dart';
import 'status_response_containeranalysis_v1beta1.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveredResponseContaineranalysisV1beta1 {
  final AnalysisCompletedResponseContaineranalysisV1beta1 analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<StatusResponseContaineranalysisV1beta1> analysisError;

  /// The status of discovery for the resource.
  final String analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final StatusResponseContaineranalysisV1beta1 analysisStatusError;

  /// Whether the resource is continuously analyzed.
  final String continuousAnalysis;

  /// The last time continuous analysis was done for this resource. Deprecated, do not use.
  final String lastAnalysisTime;

  /// The last time this resource was scanned.
  final String lastScanTime;

  /// The status of an SBOM generation.
  final SBOMStatusResponseContaineranalysisV1beta1 sbomStatus;

  /// Creates a new [DiscoveredResponseContaineranalysisV1beta1].
  /// [analysisCompleted] Required.
  /// [analysisError] Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  /// [analysisStatus] The status of discovery for the resource.
  /// [analysisStatusError] When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  /// [continuousAnalysis] Whether the resource is continuously analyzed.
  /// [lastAnalysisTime] The last time continuous analysis was done for this resource. Deprecated, do not use.
  /// [lastScanTime] The last time this resource was scanned.
  /// [sbomStatus] The status of an SBOM generation.
  DiscoveredResponseContaineranalysisV1beta1({
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
    map['analysisError'] = pulumi.Input.encodeList<
        StatusResponseContaineranalysisV1beta1,
        Map<String, dynamic>>(analysisError, (value) => value.toMap());
    map['analysisStatus'] = analysisStatus;
    map['analysisStatusError'] = analysisStatusError.toMap();
    map['continuousAnalysis'] = continuousAnalysis;
    map['lastAnalysisTime'] = lastAnalysisTime;
    map['lastScanTime'] = lastScanTime;
    map['sbomStatus'] = sbomStatus.toMap();
    return map;
  }

  factory DiscoveredResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DiscoveredResponseContaineranalysisV1beta1(
      analysisCompleted:
          AnalysisCompletedResponseContaineranalysisV1beta1.fromMap(
              (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError:
          pulumi.Input.decodeList<StatusResponseContaineranalysisV1beta1>(
              map['analysisError'],
              (value) => StatusResponseContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] as String,
      analysisStatusError: StatusResponseContaineranalysisV1beta1.fromMap(
          (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      continuousAnalysis: map['continuousAnalysis'] as String,
      lastAnalysisTime: map['lastAnalysisTime'] as String,
      lastScanTime: map['lastScanTime'] as String,
      sbomStatus: SBOMStatusResponseContaineranalysisV1beta1.fromMap(
          (map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
