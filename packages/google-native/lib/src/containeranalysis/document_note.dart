// ignore_for_file: unused_element, unnecessary_cast


/// DocumentNote represents an SPDX Document Creation Infromation section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNote {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final String? dataLicence;
  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final String? spdxVersion;

  /// Creates a new [DocumentNote].
  /// [dataLicence] Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  /// [spdxVersion] Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  DocumentNote({
    this.dataLicence,
    this.spdxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLicence': ?dataLicence,
      'spdxVersion': ?spdxVersion,
    };
  }

  factory DocumentNote.fromMap(Map<String, dynamic> map) {
    return DocumentNote(
      dataLicence: map['dataLicence'] == null ? null : map['dataLicence'] as String,
      spdxVersion: map['spdxVersion'] == null ? null : map['spdxVersion'] as String,
    );
  }
}

