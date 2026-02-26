// ignore_for_file: unused_element, unnecessary_cast

/// DocumentNote represents an SPDX Document Creation Infromation section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNoteResponse {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final String dataLicence;

  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final String spdxVersion;

  DocumentNoteResponse({
    required this.dataLicence,
    required this.spdxVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataLicence'] = dataLicence;
    map['spdxVersion'] = spdxVersion;
    return map;
  }

  factory DocumentNoteResponse.fromMap(Map<String, dynamic> map) {
    return DocumentNoteResponse(
      dataLicence: map['dataLicence'] as String,
      spdxVersion: map['spdxVersion'] as String,
    );
  }
}
