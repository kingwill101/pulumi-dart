// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentProperties {
  /// Helm chart directory path in repository.
  final pulumi.Input<String>? helmChartPath;
  /// Helm Values.yaml file location in repository.
  final pulumi.Input<String>? helmValues;
  final pulumi.Input<List<String>>? kubeManifestLocations;
  /// Determines the type of manifests within the repository.
  final pulumi.Input<String>? manifestType;
  /// Manifest override values.
  final pulumi.Input<Map<String, String>>? overrides;

  /// Creates a new [DeploymentProperties].
  /// [helmChartPath] Helm chart directory path in repository.
  /// [helmValues] Helm Values.yaml file location in repository.
  /// [kubeManifestLocations] Optional.
  /// [manifestType] Determines the type of manifests within the repository.
  /// [overrides] Manifest override values.
  DeploymentProperties({
    this.helmChartPath,
    this.helmValues,
    this.kubeManifestLocations,
    this.manifestType,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmChartPath': ?helmChartPath,
      'helmValues': ?helmValues,
      'kubeManifestLocations': ?kubeManifestLocations,
      'manifestType': ?manifestType,
      'overrides': ?overrides,
    };
  }

  factory DeploymentProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentProperties(
      helmChartPath: map['helmChartPath'] == null ? null : (map['helmChartPath'] as String).input(),
      helmValues: map['helmValues'] == null ? null : (map['helmValues'] as String).input(),
      kubeManifestLocations: map['kubeManifestLocations'] == null ? null : ((map['kubeManifestLocations'] as List).cast<String>()).input(),
      manifestType: map['manifestType'] == null ? null : (map['manifestType'] as String).input(),
      overrides: map['overrides'] == null ? null : ((map['overrides'] as Map).cast<String, String>()).input(),
    );
  }
}

