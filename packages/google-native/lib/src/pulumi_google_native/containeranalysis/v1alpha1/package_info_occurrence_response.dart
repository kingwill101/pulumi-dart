// ignore_for_file: unused_element, unnecessary_cast

import 'license_response2.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrenceResponse {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final String comment;

  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final String filename;

  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final String homePage;

  /// package or alternative values, if the governing license cannot be determined
  final LicenseResponse2 licenseConcluded;

  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  final String packageType;

  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final String sourceInfo;

  /// A short description of the package
  final String summaryDescription;

  /// Identify the full name of the package as given by the Package Originator
  final String title;

  /// Identify the version of the package
  final String version;

  PackageInfoOccurrenceResponse({
    required this.comment,
    required this.filename,
    required this.homePage,
    required this.licenseConcluded,
    required this.packageType,
    required this.sourceInfo,
    required this.summaryDescription,
    required this.title,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comment'] = comment;
    map['filename'] = filename;
    map['homePage'] = homePage;
    map['licenseConcluded'] = licenseConcluded.toMap();
    map['packageType'] = packageType;
    map['sourceInfo'] = sourceInfo;
    map['summaryDescription'] = summaryDescription;
    map['title'] = title;
    map['version'] = version;
    return map;
  }

  factory PackageInfoOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrenceResponse(
      comment: map['comment'] as String,
      filename: map['filename'] as String,
      homePage: map['homePage'] as String,
      licenseConcluded: LicenseResponse2.fromMap(
          (map['licenseConcluded'] as Map).cast<String, dynamic>()),
      packageType: map['packageType'] as String,
      sourceInfo: map['sourceInfo'] as String,
      summaryDescription: map['summaryDescription'] as String,
      title: map['title'] as String,
      version: map['version'] as String,
    );
  }
}
