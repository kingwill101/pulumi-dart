// ignore_for_file: unused_element, unnecessary_cast

/// The note representing an SBOM reference.
class SBOMReferenceNoteResponse3 {
  /// The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
  final String format;

  /// The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
  final String version;

  SBOMReferenceNoteResponse3({
    required this.format,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['version'] = version;
    return map;
  }

  factory SBOMReferenceNoteResponse3.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceNoteResponse3(
      format: map['format'] as String,
      version: map['version'] as String,
    );
  }
}
