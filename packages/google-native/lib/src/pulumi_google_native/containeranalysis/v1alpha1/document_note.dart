// ignore_for_file: unused_element, unnecessary_cast

/// DocumentNote represents an SPDX Document Creation Infromation section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNote {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final String? dataLicence;

  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final String? spdxVersion;

  DocumentNote({
    this.dataLicence,
    this.spdxVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataLicenceValue = dataLicence;
    if (dataLicenceValue != null) {
      map['dataLicence'] = dataLicenceValue;
    }
    final spdxVersionValue = spdxVersion;
    if (spdxVersionValue != null) {
      map['spdxVersion'] = spdxVersionValue;
    }
    return map;
  }

  factory DocumentNote.fromMap(Map<String, dynamic> map) {
    return DocumentNote(
      dataLicence:
          map['dataLicence'] == null ? null : map['dataLicence'] as String,
      spdxVersion:
          map['spdxVersion'] == null ? null : map['spdxVersion'] as String,
    );
  }
}
