// ignore_for_file: unused_element, unnecessary_cast


class DeploymentProperties {
  /// Helm chart directory path in repository.
  final String? helmChartPath;
  /// Helm Values.yaml file location in repository.
  final String? helmValues;
  final List<String>? kubeManifestLocations;
  /// Determines the type of manifests within the repository.
  final String? manifestType;
  /// Manifest override values.
  final Map<String, String>? overrides;

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
      helmChartPath: map['helmChartPath'] == null ? null : map['helmChartPath'] as String,
      helmValues: map['helmValues'] == null ? null : map['helmValues'] as String,
      kubeManifestLocations: map['kubeManifestLocations'] == null ? null : (map['kubeManifestLocations'] as List).cast<String>(),
      manifestType: map['manifestType'] == null ? null : map['manifestType'] as String,
      overrides: map['overrides'] == null ? null : (map['overrides'] as Map).cast<String, String>(),
    );
  }
}

