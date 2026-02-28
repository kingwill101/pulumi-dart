// ignore_for_file: unused_element, unnecessary_cast

import 'cis_benchmark_severity_containeranalysis_v1alpha1.dart';

/// A compliance check that is a CIS benchmark.
class CisBenchmarkContaineranalysisV1alpha1 {
  /// The profile level of this CIS benchmark check.
  final int? profileLevel;

  /// The severity level of this CIS benchmark check.
  final CisBenchmarkSeverityContaineranalysisV1alpha1? severity;

  /// Creates a new [CisBenchmarkContaineranalysisV1alpha1].
  /// [profileLevel] The profile level of this CIS benchmark check.
  /// [severity] The severity level of this CIS benchmark check.
  CisBenchmarkContaineranalysisV1alpha1({
    this.profileLevel,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final profileLevelValue = profileLevel;
    if (profileLevelValue != null) {
      map['profileLevel'] = profileLevelValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue.value;
    }
    return map;
  }

  factory CisBenchmarkContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return CisBenchmarkContaineranalysisV1alpha1(
      profileLevel:
          map['profileLevel'] == null ? null : map['profileLevel'] as int,
      severity: map['severity'] == null
          ? null
          : CisBenchmarkSeverityContaineranalysisV1alpha1.fromValue(
              map['severity'] as String),
    );
  }
}
