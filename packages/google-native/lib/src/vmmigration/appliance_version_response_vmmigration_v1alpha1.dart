// ignore_for_file: unused_element, unnecessary_cast

/// Describes an appliance version.
class ApplianceVersionResponseVmmigrationV1alpha1 {
  /// Determine whether it's critical to upgrade the appliance to this version.
  final bool critical;

  /// Link to a page that contains the version release notes.
  final String releaseNotesUri;

  /// A link for downloading the version.
  final String uri;

  /// The appliance version.
  final String version;

  /// Creates a new [ApplianceVersionResponseVmmigrationV1alpha1].
  /// [critical] Determine whether it's critical to upgrade the appliance to this version.
  /// [releaseNotesUri] Link to a page that contains the version release notes.
  /// [uri] A link for downloading the version.
  /// [version] The appliance version.
  ApplianceVersionResponseVmmigrationV1alpha1({
    required this.critical,
    required this.releaseNotesUri,
    required this.uri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['critical'] = critical;
    map['releaseNotesUri'] = releaseNotesUri;
    map['uri'] = uri;
    map['version'] = version;
    return map;
  }

  factory ApplianceVersionResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ApplianceVersionResponseVmmigrationV1alpha1(
      critical: map['critical'] as bool,
      releaseNotesUri: map['releaseNotesUri'] as String,
      uri: map['uri'] as String,
      version: map['version'] as String,
    );
  }
}
