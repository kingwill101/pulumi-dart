// ignore_for_file: unused_element, unnecessary_cast

/// The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.
class UpgradeDistributionResponseContaineranalysisV1alpha1 {
  /// The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed.
  final String classification;

  /// Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  final String cpeUri;

  /// The cve that would be resolved by this upgrade.
  final List<String> cve;

  /// The severity as specified by the upstream operating system.
  final String severity;

  UpgradeDistributionResponseContaineranalysisV1alpha1({
    required this.classification,
    required this.cpeUri,
    required this.cve,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['classification'] = classification;
    map['cpeUri'] = cpeUri;
    map['cve'] = cve;
    map['severity'] = severity;
    return map;
  }

  factory UpgradeDistributionResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return UpgradeDistributionResponseContaineranalysisV1alpha1(
      classification: map['classification'] as String,
      cpeUri: map['cpeUri'] as String,
      cve: (map['cve'] as List).cast<String>(),
      severity: map['severity'] as String,
    );
  }
}
