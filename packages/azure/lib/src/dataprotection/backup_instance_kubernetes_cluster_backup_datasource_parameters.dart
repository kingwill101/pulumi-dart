// ignore_for_file: unused_element, unnecessary_cast


class BackupInstanceKubernetesClusterBackupDatasourceParameters {
  /// Whether to include cluster scope resources during backup. Default to `false`. Changing this forces a new resource to be created.
  final bool? clusterScopedResourcesEnabled;
  /// Specifies the namespaces to be excluded during backup. Changing this forces a new resource to be created.
  final List<String>? excludedNamespaces;
  /// Specifies the resource types to be excluded during backup. Changing this forces a new resource to be created.
  final List<String>? excludedResourceTypes;
  /// Specifies the namespaces to be included during backup. Changing this forces a new resource to be created.
  final List<String>? includedNamespaces;
  /// Specifies the resource types to be included during backup. Changing this forces a new resource to be created.
  final List<String>? includedResourceTypes;
  /// Specifies the resources with such label selectors to be included during backup. Changing this forces a new resource to be created.
  final List<String>? labelSelectors;
  /// Whether to take volume snapshots during backup. Default to `false`. Changing this forces a new resource to be created.
  final bool? volumeSnapshotEnabled;

  /// Creates a new [BackupInstanceKubernetesClusterBackupDatasourceParameters].
  /// [clusterScopedResourcesEnabled] Whether to include cluster scope resources during backup. Default to `false`. Changing this forces a new resource to be created.
  /// [excludedNamespaces] Specifies the namespaces to be excluded during backup. Changing this forces a new resource to be created.
  /// [excludedResourceTypes] Specifies the resource types to be excluded during backup. Changing this forces a new resource to be created.
  /// [includedNamespaces] Specifies the namespaces to be included during backup. Changing this forces a new resource to be created.
  /// [includedResourceTypes] Specifies the resource types to be included during backup. Changing this forces a new resource to be created.
  /// [labelSelectors] Specifies the resources with such label selectors to be included during backup. Changing this forces a new resource to be created.
  /// [volumeSnapshotEnabled] Whether to take volume snapshots during backup. Default to `false`. Changing this forces a new resource to be created.
  BackupInstanceKubernetesClusterBackupDatasourceParameters({
    this.clusterScopedResourcesEnabled,
    this.excludedNamespaces,
    this.excludedResourceTypes,
    this.includedNamespaces,
    this.includedResourceTypes,
    this.labelSelectors,
    this.volumeSnapshotEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterScopedResourcesEnabled': ?clusterScopedResourcesEnabled,
      'excludedNamespaces': ?excludedNamespaces,
      'excludedResourceTypes': ?excludedResourceTypes,
      'includedNamespaces': ?includedNamespaces,
      'includedResourceTypes': ?includedResourceTypes,
      'labelSelectors': ?labelSelectors,
      'volumeSnapshotEnabled': ?volumeSnapshotEnabled,
    };
  }

  factory BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap(Map<String, dynamic> map) {
    return BackupInstanceKubernetesClusterBackupDatasourceParameters(
      clusterScopedResourcesEnabled: map['clusterScopedResourcesEnabled'] == null ? null : map['clusterScopedResourcesEnabled'] as bool,
      excludedNamespaces: map['excludedNamespaces'] == null ? null : (map['excludedNamespaces'] as List).cast<String>(),
      excludedResourceTypes: map['excludedResourceTypes'] == null ? null : (map['excludedResourceTypes'] as List).cast<String>(),
      includedNamespaces: map['includedNamespaces'] == null ? null : (map['includedNamespaces'] as List).cast<String>(),
      includedResourceTypes: map['includedResourceTypes'] == null ? null : (map['includedResourceTypes'] as List).cast<String>(),
      labelSelectors: map['labelSelectors'] == null ? null : (map['labelSelectors'] as List).cast<String>(),
      volumeSnapshotEnabled: map['volumeSnapshotEnabled'] == null ? null : map['volumeSnapshotEnabled'] as bool,
    );
  }
}

