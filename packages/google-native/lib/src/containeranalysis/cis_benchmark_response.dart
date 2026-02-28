// ignore_for_file: unused_element, unnecessary_cast

/// A compliance check that is a CIS benchmark.
class CisBenchmarkResponse {
  final int profileLevel;
  final String severity;

  /// Creates a new [CisBenchmarkResponse].
  /// [profileLevel] Required.
  /// [severity] Required.
  CisBenchmarkResponse({
    required this.profileLevel,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profileLevel'] = profileLevel;
    map['severity'] = severity;
    return map;
  }

  factory CisBenchmarkResponse.fromMap(Map<String, dynamic> map) {
    return CisBenchmarkResponse(
      profileLevel: map['profileLevel'] as int,
      severity: map['severity'] as String,
    );
  }
}
