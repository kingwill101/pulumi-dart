// ignore_for_file: unused_element, unnecessary_cast

import 'vulnerability_location_response2.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueResponse3 {
  /// The location of the vulnerability.
  final VulnerabilityLocationResponse2 affectedLocation;

  /// The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  final String effectiveSeverity;

  /// The location of the available fix for vulnerability.
  final VulnerabilityLocationResponse2 fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String packageType;

  /// Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  final String severityName;

  PackageIssueResponse3({
    required this.affectedLocation,
    required this.effectiveSeverity,
    required this.fixedLocation,
    required this.packageType,
    required this.severityName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affectedLocation'] = affectedLocation.toMap();
    map['effectiveSeverity'] = effectiveSeverity;
    map['fixedLocation'] = fixedLocation.toMap();
    map['packageType'] = packageType;
    map['severityName'] = severityName;
    return map;
  }

  factory PackageIssueResponse3.fromMap(Map<String, dynamic> map) {
    return PackageIssueResponse3(
      affectedLocation: VulnerabilityLocationResponse2.fromMap(
          (map['affectedLocation'] as Map).cast<String, dynamic>()),
      effectiveSeverity: map['effectiveSeverity'] as String,
      fixedLocation: VulnerabilityLocationResponse2.fromMap(
          (map['fixedLocation'] as Map).cast<String, dynamic>()),
      packageType: map['packageType'] as String,
      severityName: map['severityName'] as String,
    );
  }
}
