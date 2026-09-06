// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Helm artifact profile.
class HelmArtifactProfile {
  /// Helm package name.
  final pulumi.Input<String?>? helmPackageName;
  /// Helm package version range.
  final pulumi.Input<String?>? helmPackageVersionRange;
  /// The image pull secrets values path list.
  final pulumi.Input<List<String>?>? imagePullSecretsValuesPaths;
  /// The registry values path list.
  final pulumi.Input<List<String>?>? registryValuesPaths;

  /// Creates a new [HelmArtifactProfile].
  /// [helmPackageName] Helm package name.
  /// [helmPackageVersionRange] Helm package version range.
  /// [imagePullSecretsValuesPaths] The image pull secrets values path list.
  /// [registryValuesPaths] The registry values path list.
  const HelmArtifactProfile({
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

  factory HelmArtifactProfile.fromMap(Map<String, dynamic> map) {
    return HelmArtifactProfile(
      helmPackageName: (() { final guardedValue = map['helmPackageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      helmPackageVersionRange: (() { final guardedValue = map['helmPackageVersionRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagePullSecretsValuesPaths: (() { final guardedValue = map['imagePullSecretsValuesPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      registryValuesPaths: (() { final guardedValue = map['registryValuesPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
