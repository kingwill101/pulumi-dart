// ignore_for_file: unused_element, unnecessary_cast

import 'license_response_containeranalysis_v1alpha1.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrenceResponse {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final String comment;

  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final String filename;

  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final String homePage;

  /// package or alternative values, if the governing license cannot be determined
  final LicenseResponseContaineranalysisV1alpha1 licenseConcluded;

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

  /// Creates a new [PackageInfoOccurrenceResponse].
  /// [comment] A place for the SPDX file creator to record any general comments about the package being described
  /// [filename] Provide the actual file name of the package, or path of the directory being treated as a package
  /// [homePage] Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  /// [licenseConcluded] package or alternative values, if the governing license cannot be determined
  /// [packageType] The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  /// [sourceInfo] Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  /// [summaryDescription] A short description of the package
  /// [title] Identify the full name of the package as given by the Package Originator
  /// [version] Identify the version of the package
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
    return <String, dynamic>{
      'comment': comment,
      'filename': filename,
      'homePage': homePage,
      'licenseConcluded': licenseConcluded.toMap(),
      'packageType': packageType,
      'sourceInfo': sourceInfo,
      'summaryDescription': summaryDescription,
      'title': title,
      'version': version,
    };
  }

  factory PackageInfoOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrenceResponse(
      comment: map['comment'] as String,
      filename: map['filename'] as String,
      homePage: map['homePage'] as String,
      licenseConcluded: LicenseResponseContaineranalysisV1alpha1.fromMap(
        (map['licenseConcluded'] as Map).cast<String, dynamic>(),
      ),
      packageType: map['packageType'] as String,
      sourceInfo: map['sourceInfo'] as String,
      summaryDescription: map['summaryDescription'] as String,
      title: map['title'] as String,
      version: map['version'] as String,
    );
  }
}
