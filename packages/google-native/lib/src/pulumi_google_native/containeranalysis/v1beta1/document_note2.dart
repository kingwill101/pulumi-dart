// ignore_for_file: unused_element, unnecessary_cast

/// DocumentNote represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNote2 {
  /// Compliance with the SPDX specification includes populating the SPDX fields therein with data related to such fields ("SPDX-Metadata")
  final String? dataLicence;

  /// Provide a reference number that can be used to understand how to parse and interpret the rest of the file
  final String? spdxVersion;

  DocumentNote2({
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

  factory DocumentNote2.fromMap(Map<String, dynamic> map) {
    return DocumentNote2(
      dataLicence:
          map['dataLicence'] == null ? null : map['dataLicence'] as String,
      spdxVersion:
          map['spdxVersion'] == null ? null : map['spdxVersion'] as String,
    );
  }
}
