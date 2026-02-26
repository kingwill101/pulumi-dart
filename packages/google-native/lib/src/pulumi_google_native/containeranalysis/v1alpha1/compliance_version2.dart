// ignore_for_file: unused_element, unnecessary_cast

/// Describes the CIS benchmark version that is applicable to a given OS and os version.
class ComplianceVersion2 {
  /// The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  final String? benchmarkDocument;

  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  final String? cpeUri;

  /// The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  final String? version;

  ComplianceVersion2({
    this.benchmarkDocument,
    this.cpeUri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final benchmarkDocumentValue = benchmarkDocument;
    if (benchmarkDocumentValue != null) {
      map['benchmarkDocument'] = benchmarkDocumentValue;
    }
    final cpeUriValue = cpeUri;
    if (cpeUriValue != null) {
      map['cpeUri'] = cpeUriValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ComplianceVersion2.fromMap(Map<String, dynamic> map) {
    return ComplianceVersion2(
      benchmarkDocument: map['benchmarkDocument'] == null
          ? null
          : map['benchmarkDocument'] as String,
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
