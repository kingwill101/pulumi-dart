// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed.dart';
import 'discovery_occurrence_analysis_status.dart';
import 'discovery_occurrence_continuous_analysis.dart';
import 'sbomstatus.dart';
import 'status.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrence {
  final AnalysisCompleted? analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<Status>? analysisError;

  /// The status of discovery for the resource.
  final DiscoveryOccurrenceAnalysisStatus? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final Status? analysisStatusError;

  /// Whether the resource is continuously analyzed.
  final DiscoveryOccurrenceContinuousAnalysis? continuousAnalysis;

  /// The CPE of the resource being scanned.
  final String? cpe;

  /// The last time this resource was scanned.
  final String? lastScanTime;

  /// The status of an SBOM generation.
  final SBOMStatus? sbomStatus;

  DiscoveryOccurrence({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
    this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analysisCompletedValue = analysisCompleted;
    if (analysisCompletedValue != null) {
      map['analysisCompleted'] = analysisCompletedValue.toMap();
    }
    final analysisErrorValue = analysisError;
    if (analysisErrorValue != null) {
      map['analysisError'] =
          pulumi.Input.encodeList<Status, Map<String, dynamic>>(
              analysisErrorValue, (value) => value.toMap());
    }
    final analysisStatusValue = analysisStatus;
    if (analysisStatusValue != null) {
      map['analysisStatus'] = analysisStatusValue.value;
    }
    final analysisStatusErrorValue = analysisStatusError;
    if (analysisStatusErrorValue != null) {
      map['analysisStatusError'] = analysisStatusErrorValue.toMap();
    }
    final continuousAnalysisValue = continuousAnalysis;
    if (continuousAnalysisValue != null) {
      map['continuousAnalysis'] = continuousAnalysisValue.value;
    }
    final cpeValue = cpe;
    if (cpeValue != null) {
      map['cpe'] = cpeValue;
    }
    final lastScanTimeValue = lastScanTime;
    if (lastScanTimeValue != null) {
      map['lastScanTime'] = lastScanTimeValue;
    }
    final sbomStatusValue = sbomStatus;
    if (sbomStatusValue != null) {
      map['sbomStatus'] = sbomStatusValue.toMap();
    }
    return map;
  }

  factory DiscoveryOccurrence.fromMap(Map<String, dynamic> map) {
    return DiscoveryOccurrence(
      analysisCompleted: map['analysisCompleted'] == null
          ? null
          : AnalysisCompleted.fromMap(
              (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: map['analysisError'] == null
          ? null
          : pulumi.Input.decodeList<Status>(
              map['analysisError'],
              (value) =>
                  Status.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] == null
          ? null
          : DiscoveryOccurrenceAnalysisStatus.fromValue(
              map['analysisStatus'] as String),
      analysisStatusError: map['analysisStatusError'] == null
          ? null
          : Status.fromMap(
              (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      continuousAnalysis: map['continuousAnalysis'] == null
          ? null
          : DiscoveryOccurrenceContinuousAnalysis.fromValue(
              map['continuousAnalysis'] as String),
      cpe: map['cpe'] == null ? null : map['cpe'] as String,
      lastScanTime:
          map['lastScanTime'] == null ? null : map['lastScanTime'] as String,
      sbomStatus: map['sbomStatus'] == null
          ? null
          : SBOMStatus.fromMap(
              (map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
