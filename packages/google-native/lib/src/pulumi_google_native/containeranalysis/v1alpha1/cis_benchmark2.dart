// ignore_for_file: unused_element, unnecessary_cast

import 'cis_benchmark_severity2.dart';

/// A compliance check that is a CIS benchmark.
class CisBenchmark2 {
  /// The profile level of this CIS benchmark check.
  final int? profileLevel;

  /// The severity level of this CIS benchmark check.
  final CisBenchmarkSeverity2? severity;

  CisBenchmark2({
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

  factory CisBenchmark2.fromMap(Map<String, dynamic> map) {
    return CisBenchmark2(
      profileLevel:
          map['profileLevel'] == null ? null : map['profileLevel'] as int,
      severity: map['severity'] == null
          ? null
          : CisBenchmarkSeverity2.fromValue(map['severity'] as String),
    );
  }
}
