// ignore_for_file: unused_element, unnecessary_cast

import 'vulnerability_location2.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssue3 {
  /// The location of the vulnerability.
  final VulnerabilityLocation2 affectedLocation;

  /// The location of the available fix for vulnerability.
  final VulnerabilityLocation2? fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String? packageType;

  /// Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  final String? severityName;

  PackageIssue3({
    required this.affectedLocation,
    this.fixedLocation,
    this.packageType,
    this.severityName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affectedLocation'] = affectedLocation.toMap();
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

  factory PackageIssue3.fromMap(Map<String, dynamic> map) {
    return PackageIssue3(
      affectedLocation: VulnerabilityLocation2.fromMap(
          (map['affectedLocation'] as Map).cast<String, dynamic>()),
      fixedLocation: map['fixedLocation'] == null
          ? null
          : VulnerabilityLocation2.fromMap(
              (map['fixedLocation'] as Map).cast<String, dynamic>()),
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      severityName:
          map['severityName'] == null ? null : map['severityName'] as String,
    );
  }
}
