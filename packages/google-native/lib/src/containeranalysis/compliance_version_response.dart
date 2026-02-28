// ignore_for_file: unused_element, unnecessary_cast


/// Describes the CIS benchmark version that is applicable to a given OS and os version.
class ComplianceVersionResponse {
  /// The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  final String benchmarkDocument;
  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  final String cpeUri;
  /// The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  final String version;

  /// Creates a new [ComplianceVersionResponse].
  /// [benchmarkDocument] The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  /// [cpeUri] The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  /// [version] The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  ComplianceVersionResponse({
    required this.benchmarkDocument,
    required this.cpeUri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'benchmarkDocument': benchmarkDocument,
      'cpeUri': cpeUri,
      'version': version,
    };
  }

  factory ComplianceVersionResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceVersionResponse(
      benchmarkDocument: map['benchmarkDocument'] as String,
      cpeUri: map['cpeUri'] as String,
      version: map['version'] as String,
    );
  }
}

