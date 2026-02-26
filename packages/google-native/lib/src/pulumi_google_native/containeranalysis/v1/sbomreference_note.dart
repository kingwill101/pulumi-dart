// ignore_for_file: unused_element, unnecessary_cast

/// The note representing an SBOM reference.
class SBOMReferenceNote {
  /// The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
  final String? format;

  /// The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
  final String? version;

  SBOMReferenceNote({
    this.format,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory SBOMReferenceNote.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceNote(
      format: map['format'] == null ? null : map['format'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
