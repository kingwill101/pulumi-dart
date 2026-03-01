// ignore_for_file: unused_element, unnecessary_cast

/// Describes an appliance version.
class ApplianceVersionResponse {
  /// Determine whether it's critical to upgrade the appliance to this version.
  final bool critical;

  /// Link to a page that contains the version release notes.
  final String releaseNotesUri;

  /// A link for downloading the version.
  final String uri;

  /// The appliance version.
  final String version;

  /// Creates a new [ApplianceVersionResponse].
  /// [critical] Determine whether it's critical to upgrade the appliance to this version.
  /// [releaseNotesUri] Link to a page that contains the version release notes.
  /// [uri] A link for downloading the version.
  /// [version] The appliance version.
  ApplianceVersionResponse({
    required this.critical,
    required this.releaseNotesUri,
    required this.uri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': critical,
      'releaseNotesUri': releaseNotesUri,
      'uri': uri,
      'version': version,
    };
  }

  factory ApplianceVersionResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceVersionResponse(
      critical: map['critical'] as bool,
      releaseNotesUri: map['releaseNotesUri'] as String,
      uri: map['uri'] as String,
      version: map['version'] as String,
    );
  }
}
