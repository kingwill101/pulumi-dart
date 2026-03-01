// ignore_for_file: unused_element, unnecessary_cast


/// Solution builder extension (SBE) package and manifest information for the solution builder extension staged for AzureStackHCI cluster deployment.
class SbeDeploymentInfoResponse {
  /// SBE family name.
  final String? family;
  /// SBE manifest publisher.
  final String? publisher;
  /// SBE Manifest Creation Date.
  final String? sbeManifestCreationDate;
  /// SBE Manifest Source.
  final String? sbeManifestSource;
  /// SBE package version.
  final String? version;

  /// Creates a new [SbeDeploymentInfoResponse].
  /// [family] SBE family name.
  /// [publisher] SBE manifest publisher.
  /// [sbeManifestCreationDate] SBE Manifest Creation Date.
  /// [sbeManifestSource] SBE Manifest Source.
  /// [version] SBE package version.
  SbeDeploymentInfoResponse({
    this.family,
    this.publisher,
    this.sbeManifestCreationDate,
    this.sbeManifestSource,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': ?family,
      'publisher': ?publisher,
      'sbeManifestCreationDate': ?sbeManifestCreationDate,
      'sbeManifestSource': ?sbeManifestSource,
      'version': ?version,
    };
  }

  factory SbeDeploymentInfoResponse.fromMap(Map<String, dynamic> map) {
    return SbeDeploymentInfoResponse(
      family: map['family'] == null ? null : map['family'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sbeManifestCreationDate: map['sbeManifestCreationDate'] == null ? null : map['sbeManifestCreationDate'] as String,
      sbeManifestSource: map['sbeManifestSource'] == null ? null : map['sbeManifestSource'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

