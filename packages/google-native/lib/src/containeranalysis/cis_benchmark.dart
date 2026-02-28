// ignore_for_file: unused_element, unnecessary_cast

import 'cis_benchmark_severity.dart';

/// A compliance check that is a CIS benchmark.
class CisBenchmark {
  final int? profileLevel;
  final CisBenchmarkSeverity? severity;

  /// Creates a new [CisBenchmark].
  /// [profileLevel] Optional.
  /// [severity] Optional.
  CisBenchmark({
    this.profileLevel,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileLevel': ?profileLevel,
      'severity': ?severity == null ? null : severity!.value,
    };
  }

  factory CisBenchmark.fromMap(Map<String, dynamic> map) {
    return CisBenchmark(
      profileLevel: map['profileLevel'] == null ? null : map['profileLevel'] as int,
      severity: map['severity'] == null ? null : CisBenchmarkSeverity.fromValue(map['severity'] as String),
    );
  }
}

