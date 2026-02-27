// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'analysis_completed2.dart';
import 'discovered_analysis_status.dart';
import 'discovered_continuous_analysis.dart';
import 'status2.dart';

/// Provides information about the scan status of a discovered resource.
class Discovered {
  /// The list of analysis that were completed for a resource.
  final AnalysisCompleted2? analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<Status2>? analysisError;

  /// The status of discovery for the resource.
  final DiscoveredAnalysisStatus? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  final Status2? analysisStatusError;

  /// The time occurrences related to this discovery occurrence were archived.
  final String? archiveTime;

  /// Whether the resource is continuously analyzed.
  final DiscoveredContinuousAnalysis? continuousAnalysis;

  /// The CPE of the resource being scanned.
  final String? cpe;

  /// The last time this resource was scanned.
  final String? lastScanTime;

  Discovered({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.archiveTime,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analysisCompletedValue = analysisCompleted;
    if (analysisCompletedValue != null) {
      map['analysisCompleted'] = analysisCompletedValue.toMap();
    }
    final analysisErrorValue = analysisError;
    if (analysisErrorValue != null) {
      map['analysisError'] = Input.encodeList<Status2, Map<String, dynamic>>(
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
    final archiveTimeValue = archiveTime;
    if (archiveTimeValue != null) {
      map['archiveTime'] = archiveTimeValue;
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
    return map;
  }

  factory Discovered.fromMap(Map<String, dynamic> map) {
    return Discovered(
      analysisCompleted: map['analysisCompleted'] == null
          ? null
          : AnalysisCompleted2.fromMap(
              (map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: map['analysisError'] == null
          ? null
          : Input.decodeList<Status2>(
              map['analysisError'],
              (value) =>
                  Status2.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] == null
          ? null
          : DiscoveredAnalysisStatus.fromValue(map['analysisStatus'] as String),
      analysisStatusError: map['analysisStatusError'] == null
          ? null
          : Status2.fromMap(
              (map['analysisStatusError'] as Map).cast<String, dynamic>()),
      archiveTime:
          map['archiveTime'] == null ? null : map['archiveTime'] as String,
      continuousAnalysis: map['continuousAnalysis'] == null
          ? null
          : DiscoveredContinuousAnalysis.fromValue(
              map['continuousAnalysis'] as String),
      cpe: map['cpe'] == null ? null : map['cpe'] as String,
      lastScanTime:
          map['lastScanTime'] == null ? null : map['lastScanTime'] as String,
    );
  }
}
