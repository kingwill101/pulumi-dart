// ignore_for_file: unused_element, unnecessary_cast

/// The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.
class UpgradeDistribution {
  /// The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)
  final String? classification;

  /// Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  final String? cpeUri;

  /// The cve tied to this Upgrade.
  final List<String>? cve;

  /// The severity as specified by the upstream operating system.
  final String? severity;

  UpgradeDistribution({
    this.classification,
    this.cpeUri,
    this.cve,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classificationValue = classification;
    if (classificationValue != null) {
      map['classification'] = classificationValue;
    }
    final cpeUriValue = cpeUri;
    if (cpeUriValue != null) {
      map['cpeUri'] = cpeUriValue;
    }
    final cveValue = cve;
    if (cveValue != null) {
      map['cve'] = cveValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue;
    }
    return map;
  }

  factory UpgradeDistribution.fromMap(Map<String, dynamic> map) {
    return UpgradeDistribution(
      classification: map['classification'] == null
          ? null
          : map['classification'] as String,
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      cve: map['cve'] == null ? null : (map['cve'] as List).cast<String>(),
      severity: map['severity'] == null ? null : map['severity'] as String,
    );
  }
}
