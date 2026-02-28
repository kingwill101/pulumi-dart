// ignore_for_file: unused_element, unnecessary_cast

import 'vulnerability_location_response.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueResponseContaineranalysisV1alpha1 {
  /// The location of the vulnerability.
  final VulnerabilityLocationResponse affectedLocation;

  /// The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when distro or language system has not yet assigned a severity for this vulnerability.
  final String effectiveSeverity;

  /// The location of the available fix for vulnerability.
  final VulnerabilityLocationResponse fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String packageType;
  final String severityName;

  /// Creates a new [PackageIssueResponseContaineranalysisV1alpha1].
  /// [affectedLocation] The location of the vulnerability.
  /// [effectiveSeverity] The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when distro or language system has not yet assigned a severity for this vulnerability.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Required.
  PackageIssueResponseContaineranalysisV1alpha1({
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

  factory PackageIssueResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PackageIssueResponseContaineranalysisV1alpha1(
      affectedLocation: VulnerabilityLocationResponse.fromMap(
          (map['affectedLocation'] as Map).cast<String, dynamic>()),
      effectiveSeverity: map['effectiveSeverity'] as String,
      fixedLocation: VulnerabilityLocationResponse.fromMap(
          (map['fixedLocation'] as Map).cast<String, dynamic>()),
      packageType: map['packageType'] as String,
      severityName: map['severityName'] as String,
    );
  }
}
