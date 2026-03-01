// ignore_for_file: unused_element, unnecessary_cast


/// Helm artifact profile.
class HelmArtifactProfileResponse {
  /// Helm package name.
  final String? helmPackageName;
  /// Helm package version range.
  final String? helmPackageVersionRange;
  /// The image pull secrets values path list.
  final List<String>? imagePullSecretsValuesPaths;
  /// The registry values path list.
  final List<String>? registryValuesPaths;

  /// Creates a new [HelmArtifactProfileResponse].
  /// [helmPackageName] Helm package name.
  /// [helmPackageVersionRange] Helm package version range.
  /// [imagePullSecretsValuesPaths] The image pull secrets values path list.
  /// [registryValuesPaths] The registry values path list.
  HelmArtifactProfileResponse({
    this.helmPackageName,
    this.helmPackageVersionRange,
    this.imagePullSecretsValuesPaths,
    this.registryValuesPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmPackageName': ?helmPackageName,
      'helmPackageVersionRange': ?helmPackageVersionRange,
      'imagePullSecretsValuesPaths': ?imagePullSecretsValuesPaths,
      'registryValuesPaths': ?registryValuesPaths,
    };
  }

  factory HelmArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return HelmArtifactProfileResponse(
      helmPackageName: map['helmPackageName'] == null ? null : map['helmPackageName'] as String,
      helmPackageVersionRange: map['helmPackageVersionRange'] == null ? null : map['helmPackageVersionRange'] as String,
      imagePullSecretsValuesPaths: map['imagePullSecretsValuesPaths'] == null ? null : (map['imagePullSecretsValuesPaths'] as List).cast<String>(),
      registryValuesPaths: map['registryValuesPaths'] == null ? null : (map['registryValuesPaths'] as List).cast<String>(),
    );
  }
}

