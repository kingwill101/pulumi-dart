// ignore_for_file: unused_element, unnecessary_cast

import 'vulnerability_location.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueContaineranalysisV1alpha1 {
  /// The location of the vulnerability.
  final VulnerabilityLocation? affectedLocation;

  /// The location of the available fix for vulnerability.
  final VulnerabilityLocation? fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String? packageType;
  final String? severityName;

  /// Creates a new [PackageIssueContaineranalysisV1alpha1].
  /// [affectedLocation] The location of the vulnerability.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Optional.
  PackageIssueContaineranalysisV1alpha1({
    this.affectedLocation,
    this.fixedLocation,
    this.packageType,
    this.severityName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final affectedLocationValue = affectedLocation;
    if (affectedLocationValue != null) {
      map['affectedLocation'] = affectedLocationValue.toMap();
    }
    final fixedLocationValue = fixedLocation;
    if (fixedLocationValue != null) {
      map['fixedLocation'] = fixedLocationValue.toMap();
    }
    final packageTypeValue = packageType;
    if (packageTypeValue != null) {
      map['packageType'] = packageTypeValue;
    }
    final severityNameValue = severityName;
    if (severityNameValue != null) {
      map['severityName'] = severityNameValue;
    }
    return map;
  }

  factory PackageIssueContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PackageIssueContaineranalysisV1alpha1(
      affectedLocation: map['affectedLocation'] == null
          ? null
          : VulnerabilityLocation.fromMap(
              (map['affectedLocation'] as Map).cast<String, dynamic>()),
      fixedLocation: map['fixedLocation'] == null
          ? null
          : VulnerabilityLocation.fromMap(
              (map['fixedLocation'] as Map).cast<String, dynamic>()),
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      severityName:
          map['severityName'] == null ? null : map['severityName'] as String,
    );
  }
}
