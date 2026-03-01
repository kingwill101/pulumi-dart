// ignore_for_file: unused_element, unnecessary_cast

import 'vulnerability_location_containeranalysis_v1beta1.dart';

/// This message wraps a location affected by a vulnerability and its associated fix (if one is available).
class PackageIssueContaineranalysisV1beta1 {
  /// The location of the vulnerability.
  final VulnerabilityLocationContaineranalysisV1beta1 affectedLocation;

  /// The location of the available fix for vulnerability.
  final VulnerabilityLocationContaineranalysisV1beta1? fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String? packageType;

  /// Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  final String? severityName;

  /// Creates a new [PackageIssueContaineranalysisV1beta1].
  /// [affectedLocation] The location of the vulnerability.
  /// [fixedLocation] The location of the available fix for vulnerability.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  /// [severityName] Deprecated, use Details.effective_severity instead The severity (e.g., distro assigned severity) for this vulnerability.
  PackageIssueContaineranalysisV1beta1({
    required this.affectedLocation,
    this.fixedLocation,
    this.packageType,
    this.severityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedLocation': affectedLocation.toMap(),
      'fixedLocation': ?fixedLocation == null ? null : fixedLocation!.toMap(),
      'packageType': ?packageType,
      'severityName': ?severityName,
    };
  }

  factory PackageIssueContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PackageIssueContaineranalysisV1beta1(
      affectedLocation: VulnerabilityLocationContaineranalysisV1beta1.fromMap(
        (map['affectedLocation'] as Map).cast<String, dynamic>(),
      ),
      fixedLocation: map['fixedLocation'] == null
          ? null
          : VulnerabilityLocationContaineranalysisV1beta1.fromMap(
              (map['fixedLocation'] as Map).cast<String, dynamic>(),
            ),
      packageType: map['packageType'] == null
          ? null
          : map['packageType'] as String,
      severityName: map['severityName'] == null
          ? null
          : map['severityName'] as String,
    );
  }
}
