// ignore_for_file: unused_element, unnecessary_cast


/// The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.
class UpgradeDistributionResponse {
  /// The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)
  final String classification;
  /// Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  final String cpeUri;
  /// The cve tied to this Upgrade.
  final List<String> cve;
  /// The severity as specified by the upstream operating system.
  final String severity;

  /// Creates a new [UpgradeDistributionResponse].
  /// [classification] The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)
  /// [cpeUri] Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  /// [cve] The cve tied to this Upgrade.
  /// [severity] The severity as specified by the upstream operating system.
  UpgradeDistributionResponse({
    required this.classification,
    required this.cpeUri,
    required this.cve,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': classification,
      'cpeUri': cpeUri,
      'cve': cve,
      'severity': severity,
    };
  }

  factory UpgradeDistributionResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeDistributionResponse(
      classification: map['classification'] as String,
      cpeUri: map['cpeUri'] as String,
      cve: (map['cve'] as List).cast<String>(),
      severity: map['severity'] as String,
    );
  }
}

