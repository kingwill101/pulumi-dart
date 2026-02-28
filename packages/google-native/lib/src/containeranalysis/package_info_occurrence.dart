// ignore_for_file: unused_element, unnecessary_cast

import 'license_containeranalysis_v1alpha1.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrence {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final String? comment;
  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final String? filename;
  /// Uniquely identify any element in an SPDX document which may be referenced by other elements
  final String? id;
  /// package or alternative values, if the governing license cannot be determined
  final LicenseContaineranalysisV1alpha1? licenseConcluded;
  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final String? sourceInfo;

  /// Creates a new [PackageInfoOccurrence].
  /// [comment] A place for the SPDX file creator to record any general comments about the package being described
  /// [filename] Provide the actual file name of the package, or path of the directory being treated as a package
  /// [id] Uniquely identify any element in an SPDX document which may be referenced by other elements
  /// [licenseConcluded] package or alternative values, if the governing license cannot be determined
  /// [sourceInfo] Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  PackageInfoOccurrence({
    this.comment,
    this.filename,
    this.id,
    this.licenseConcluded,
    this.sourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'filename': ?filename,
      'id': ?id,
      'licenseConcluded': ?licenseConcluded == null ? null : licenseConcluded!.toMap(),
      'sourceInfo': ?sourceInfo,
    };
  }

  factory PackageInfoOccurrence.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrence(
      comment: map['comment'] == null ? null : map['comment'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      licenseConcluded: map['licenseConcluded'] == null ? null : LicenseContaineranalysisV1alpha1.fromMap((map['licenseConcluded'] as Map).cast<String, dynamic>()),
      sourceInfo: map['sourceInfo'] == null ? null : map['sourceInfo'] as String,
    );
  }
}

