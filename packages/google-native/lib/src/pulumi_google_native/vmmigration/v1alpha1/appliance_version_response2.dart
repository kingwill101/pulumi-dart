// ignore_for_file: unused_element, unnecessary_cast

/// Describes an appliance version.
class ApplianceVersionResponse2 {
  /// Determine whether it's critical to upgrade the appliance to this version.
  final bool critical;

  /// Link to a page that contains the version release notes.
  final String releaseNotesUri;

  /// A link for downloading the version.
  final String uri;

  /// The appliance version.
  final String version;

  ApplianceVersionResponse2({
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

  factory ApplianceVersionResponse2.fromMap(Map<String, dynamic> map) {
    return ApplianceVersionResponse2(
      critical: map['critical'] as bool,
      releaseNotesUri: map['releaseNotesUri'] as String,
      uri: map['uri'] as String,
      version: map['version'] as String,
    );
  }
}
