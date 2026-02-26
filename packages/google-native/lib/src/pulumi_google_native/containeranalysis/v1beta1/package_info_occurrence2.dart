// ignore_for_file: unused_element, unnecessary_cast

import 'license3.dart';

/// PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrence2 {
  /// A place for the SPDX file creator to record any general comments about the package being described
  final String? comment;

  /// Provide the actual file name of the package, or path of the directory being treated as a package
  final String? filename;

  /// Uniquely identify any element in an SPDX document which may be referenced by other elements
  final String? id;

  /// package or alternative values, if the governing license cannot be determined
  final License3? licenseConcluded;

  /// Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  final String? sourceInfo;

  PackageInfoOccurrence2({
    this.comment,
    this.filename,
    this.id,
    this.licenseConcluded,
    this.sourceInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final filenameValue = filename;
    if (filenameValue != null) {
      map['filename'] = filenameValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final licenseConcludedValue = licenseConcluded;
    if (licenseConcludedValue != null) {
      map['licenseConcluded'] = licenseConcludedValue.toMap();
    }
    final sourceInfoValue = sourceInfo;
    if (sourceInfoValue != null) {
      map['sourceInfo'] = sourceInfoValue;
    }
    return map;
  }

  factory PackageInfoOccurrence2.fromMap(Map<String, dynamic> map) {
    return PackageInfoOccurrence2(
      comment: map['comment'] == null ? null : map['comment'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      licenseConcluded: map['licenseConcluded'] == null
          ? null
          : License3.fromMap(
              (map['licenseConcluded'] as Map).cast<String, dynamic>()),
      sourceInfo:
          map['sourceInfo'] == null ? null : map['sourceInfo'] as String,
    );
  }
}
