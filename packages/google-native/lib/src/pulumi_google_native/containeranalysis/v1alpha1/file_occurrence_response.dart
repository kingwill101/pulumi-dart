// ignore_for_file: unused_element, unnecessary_cast

import 'license_response_containeranalysis_v1alpha1.dart';

/// FileOccurrence represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileOccurrenceResponse {
  /// This field provides a place for the SPDX data creator to record, at the file level, acknowledgements that may be needed to be communicated in some contexts
  final List<String> attributions;

  /// This field provides a place for the SPDX file creator to record any general comments about the file
  final String comment;

  /// This field provides a place for the SPDX file creator to record file contributors
  final List<String> contributors;

  /// Identify the copyright holder of the file, as well as any dates present
  final String copyright;

  /// This field contains the license information actually found in the file, if any
  final List<String> filesLicenseInfo;

  /// This field contains the license the SPDX file creator has concluded as governing the file or alternative values if the governing license cannot be determined
  final LicenseResponseContaineranalysisV1alpha1 licenseConcluded;

  /// This field provides a place for the SPDX file creator to record license notices or other such related notices found in the file
  final String notice;

  FileOccurrenceResponse({
    required this.attributions,
    required this.comment,
    required this.contributors,
    required this.copyright,
    required this.filesLicenseInfo,
    required this.licenseConcluded,
    required this.notice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributions'] = attributions;
    map['comment'] = comment;
    map['contributors'] = contributors;
    map['copyright'] = copyright;
    map['filesLicenseInfo'] = filesLicenseInfo;
    map['licenseConcluded'] = licenseConcluded.toMap();
    map['notice'] = notice;
    return map;
  }

  factory FileOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return FileOccurrenceResponse(
      attributions: (map['attributions'] as List).cast<String>(),
      comment: map['comment'] as String,
      contributors: (map['contributors'] as List).cast<String>(),
      copyright: map['copyright'] as String,
      filesLicenseInfo: (map['filesLicenseInfo'] as List).cast<String>(),
      licenseConcluded: LicenseResponseContaineranalysisV1alpha1.fromMap(
          (map['licenseConcluded'] as Map).cast<String, dynamic>()),
      notice: map['notice'] as String,
    );
  }
}
