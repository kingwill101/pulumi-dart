// ignore_for_file: unused_element, unnecessary_cast

/// Describes the CIS benchmark version that is applicable to a given OS and os version.
class ComplianceVersionContaineranalysisV1alpha1 {
  /// The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  final String? benchmarkDocument;

  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  final String? cpeUri;

  /// The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  final String? version;

  /// Creates a new [ComplianceVersionContaineranalysisV1alpha1].
  /// [benchmarkDocument] The name of the document that defines this benchmark, e.g. "CIS Container-Optimized OS".
  /// [cpeUri] The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.
  /// [version] The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
  ComplianceVersionContaineranalysisV1alpha1({
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

  factory ComplianceVersionContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ComplianceVersionContaineranalysisV1alpha1(
      benchmarkDocument: map['benchmarkDocument'] == null
          ? null
          : map['benchmarkDocument'] as String,
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
