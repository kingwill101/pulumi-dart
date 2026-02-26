// ignore_for_file: unused_element, unnecessary_cast

/// Describes the CIS benchmark version that is applicable to a given OS and os version.
class ComplianceVersionResponse2 {
  /// The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  final String benchmarkDocument;

  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  final String cpeUri;

  /// The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  final String version;

  ComplianceVersionResponse2({
    required this.benchmarkDocument,
    required this.cpeUri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['benchmarkDocument'] = benchmarkDocument;
    map['cpeUri'] = cpeUri;
    map['version'] = version;
    return map;
  }

  factory ComplianceVersionResponse2.fromMap(Map<String, dynamic> map) {
    return ComplianceVersionResponse2(
      benchmarkDocument: map['benchmarkDocument'] as String,
      cpeUri: map['cpeUri'] as String,
      version: map['version'] as String,
    );
  }
}
