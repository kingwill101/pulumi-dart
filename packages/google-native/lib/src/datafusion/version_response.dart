// ignore_for_file: unused_element, unnecessary_cast

/// The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.
class VersionResponse {
  /// Represents a list of available feature names for a given version.
  final List<String> availableFeatures;

  /// Whether this is currently the default version for Cloud Data Fusion
  final bool defaultVersion;

  /// Type represents the release availability of the version
  final String type;

  /// The version number of the Data Fusion instance, such as '6.0.1.0'.
  final String versionNumber;

  /// Creates a new [VersionResponse].
  /// [availableFeatures] Represents a list of available feature names for a given version.
  /// [defaultVersion] Whether this is currently the default version for Cloud Data Fusion
  /// [type] Type represents the release availability of the version
  /// [versionNumber] The version number of the Data Fusion instance, such as '6.0.1.0'.
  VersionResponse({
    required this.availableFeatures,
    required this.defaultVersion,
    required this.type,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableFeatures': availableFeatures,
      'defaultVersion': defaultVersion,
      'type': type,
      'versionNumber': versionNumber,
    };
  }

  factory VersionResponse.fromMap(Map<String, dynamic> map) {
    return VersionResponse(
      availableFeatures: (map['availableFeatures'] as List).cast<String>(),
      defaultVersion: map['defaultVersion'] as bool,
      type: map['type'] as String,
      versionNumber: map['versionNumber'] as String,
    );
  }
}
