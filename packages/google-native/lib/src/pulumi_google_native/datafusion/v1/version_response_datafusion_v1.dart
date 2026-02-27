// ignore_for_file: unused_element, unnecessary_cast

/// The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.
class VersionResponseDatafusionV1 {
  /// Represents a list of available feature names for a given version.
  final List<String> availableFeatures;

  /// Whether this is currently the default version for Cloud Data Fusion
  final bool defaultVersion;

  /// Type represents the release availability of the version
  final String type;

  /// The version number of the Data Fusion instance, such as '6.0.1.0'.
  final String versionNumber;

  VersionResponseDatafusionV1({
    required this.availableFeatures,
    required this.defaultVersion,
    required this.type,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availableFeatures'] = availableFeatures;
    map['defaultVersion'] = defaultVersion;
    map['type'] = type;
    map['versionNumber'] = versionNumber;
    return map;
  }

  factory VersionResponseDatafusionV1.fromMap(Map<String, dynamic> map) {
    return VersionResponseDatafusionV1(
      availableFeatures: (map['availableFeatures'] as List).cast<String>(),
      defaultVersion: map['defaultVersion'] as bool,
      type: map['type'] as String,
      versionNumber: map['versionNumber'] as String,
    );
  }
}
