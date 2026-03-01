// ignore_for_file: unused_element, unnecessary_cast

/// DocumentNote represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNoteContaineranalysisV1beta1 {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final String? dataLicence;

  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final String? spdxVersion;

  /// Creates a new [DocumentNoteContaineranalysisV1beta1].
  /// [dataLicence] Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  /// [spdxVersion] Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  DocumentNoteContaineranalysisV1beta1({this.dataLicence, this.spdxVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLicence': ?dataLicence,
      'spdxVersion': ?spdxVersion,
    };
  }

  factory DocumentNoteContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DocumentNoteContaineranalysisV1beta1(
      dataLicence: map['dataLicence'] == null
          ? null
          : map['dataLicence'] as String,
      spdxVersion: map['spdxVersion'] == null
          ? null
          : map['spdxVersion'] as String,
    );
  }
}
