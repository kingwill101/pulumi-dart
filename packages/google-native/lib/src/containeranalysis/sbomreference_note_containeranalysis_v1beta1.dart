// ignore_for_file: unused_element, unnecessary_cast

/// The note representing an SBOM reference.
class SBOMReferenceNoteContaineranalysisV1beta1 {
  /// The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
  final String? format;

  /// The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
  final String? version;

  /// Creates a new [SBOMReferenceNoteContaineranalysisV1beta1].
  /// [format] The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
  /// [version] The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
  SBOMReferenceNoteContaineranalysisV1beta1({this.format, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'format': ?format, 'version': ?version};
  }

  factory SBOMReferenceNoteContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SBOMReferenceNoteContaineranalysisV1beta1(
      format: map['format'] == null ? null : map['format'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
