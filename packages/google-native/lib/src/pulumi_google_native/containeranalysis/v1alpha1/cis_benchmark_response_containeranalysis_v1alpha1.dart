// ignore_for_file: unused_element, unnecessary_cast

/// A compliance check that is a CIS benchmark.
class CisBenchmarkResponseContaineranalysisV1alpha1 {
  /// The profile level of this CIS benchmark check.
  final int profileLevel;

  /// The severity level of this CIS benchmark check.
  final String severity;

  CisBenchmarkResponseContaineranalysisV1alpha1({
    required this.profileLevel,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profileLevel'] = profileLevel;
    map['severity'] = severity;
    return map;
  }

  factory CisBenchmarkResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return CisBenchmarkResponseContaineranalysisV1alpha1(
      profileLevel: map['profileLevel'] as int,
      severity: map['severity'] as String,
    );
  }
}
