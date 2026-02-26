// ignore_for_file: unused_element, unnecessary_cast

/// A compliance check that is a CIS benchmark.
class CisBenchmarkResponse2 {
  /// The profile level of this CIS benchmark check.
  final int profileLevel;

  /// The severity level of this CIS benchmark check.
  final String severity;

  CisBenchmarkResponse2({
    required this.profileLevel,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profileLevel'] = profileLevel;
    map['severity'] = severity;
    return map;
  }

  factory CisBenchmarkResponse2.fromMap(Map<String, dynamic> map) {
    return CisBenchmarkResponse2(
      profileLevel: map['profileLevel'] as int,
      severity: map['severity'] as String,
    );
  }
}
