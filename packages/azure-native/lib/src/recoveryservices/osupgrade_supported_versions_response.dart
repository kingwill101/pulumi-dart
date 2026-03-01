// ignore_for_file: unused_element, unnecessary_cast


/// Supported OS upgrade versions.
class OSUpgradeSupportedVersionsResponse {
  /// The source OS version name.
  final String supportedSourceOsVersion;
  /// The target OS version names.
  final List<String> supportedTargetOsVersions;

  /// Creates a new [OSUpgradeSupportedVersionsResponse].
  /// [supportedSourceOsVersion] The source OS version name.
  /// [supportedTargetOsVersions] The target OS version names.
  OSUpgradeSupportedVersionsResponse({
    required this.supportedSourceOsVersion,
    required this.supportedTargetOsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedSourceOsVersion': supportedSourceOsVersion,
      'supportedTargetOsVersions': supportedTargetOsVersions,
    };
  }

  factory OSUpgradeSupportedVersionsResponse.fromMap(Map<String, dynamic> map) {
    return OSUpgradeSupportedVersionsResponse(
      supportedSourceOsVersion: map['supportedSourceOsVersion'] as String,
      supportedTargetOsVersions: (map['supportedTargetOsVersions'] as List).cast<String>(),
    );
  }
}

