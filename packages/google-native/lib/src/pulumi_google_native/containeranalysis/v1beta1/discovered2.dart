// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'analysis_completed3.dart';
import 'discovered_analysis_status2.dart';
import 'discovered_continuous_analysis2.dart';
import 'sbomstatus2.dart';
import 'status3.dart';

/// Provides information about the analysis status of a discovered resource.
class Discovered2 {
  final AnalysisCompleted3? analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<Status3>? analysisError;

  /// The status of discovery for the resource.
  final DiscoveredAnalysisStatus2? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final Status3? analysisStatusError;

  /// Whether the resource is continuously analyzed.
  final DiscoveredContinuousAnalysis2? continuousAnalysis;

  /// The last time continuous analysis was done for this resource. Deprecated, do not use.
  final String? lastAnalysisTime;

  /// The last time this resource was scanned.
  final String? lastScanTime;

  /// The status of an SBOM generation.
  final SBOMStatus2? sbomStatus;

  Discovered2({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.lastAnalysisTime,
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
      map['analysisError'] = Input.encodeList<Status3, Map<String, dynamic>>(
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
    final lastAnalysisTimeValue = lastAnalysisTime;
    if (lastAnalysisTimeValue != null) {
      map['lastAnalysisTime'] = lastAnalysisTimeValue;
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

  factory Discovered2.fromMap(Map<String, dynamic> map) {
    return Discovered2(
      analysisCompleted: map['analysisCompleted'] == null
          ? null
          : AnalysisCompleted3.fromMap(
              (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: map['analysisError'] == null
          ? null
          : Input.decodeList<Status3>(
              map['analysisError'],
              (value) =>
                  Status3.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] == null
          ? null
          : DiscoveredAnalysisStatus2.fromValue(
              map['analysisStatus'] as String),
      analysisStatusError: map['analysisStatusError'] == null
          ? null
          : Status3.fromMap(
              (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      continuousAnalysis: map['continuousAnalysis'] == null
          ? null
          : DiscoveredContinuousAnalysis2.fromValue(
              map['continuousAnalysis'] as String),
      lastAnalysisTime: map['lastAnalysisTime'] == null
          ? null
          : map['lastAnalysisTime'] as String,
      lastScanTime:
          map['lastScanTime'] == null ? null : map['lastScanTime'] as String,
      sbomStatus: map['sbomStatus'] == null
          ? null
          : SBOMStatus2.fromMap(
              (map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
