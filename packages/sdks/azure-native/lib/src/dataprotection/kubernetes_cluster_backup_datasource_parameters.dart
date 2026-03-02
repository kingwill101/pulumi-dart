// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_name_resource.dart';

/// Parameters for Kubernetes Cluster Backup Datasource
class KubernetesClusterBackupDatasourceParameters {
  /// Gets or sets the backup hook references. This property sets the hook reference to be executed during backup.
  final pulumi.Input<List<NamespacedNameResource>>? backupHookReferences;
  /// Gets or sets the exclude namespaces property. This property sets the namespaces to be excluded during backup.
  final pulumi.Input<List<String>>? excludedNamespaces;
  /// Gets or sets the exclude resource types property. This property sets the resource types to be excluded during backup.
  final pulumi.Input<List<String>>? excludedResourceTypes;
  /// Gets or sets the include cluster resources property. This property if enabled will include cluster scope resources during backup.
  final pulumi.Input<bool> includeClusterScopeResources;
  /// Gets or sets the include namespaces property. This property sets the namespaces to be included during backup.
  final pulumi.Input<List<String>>? includedNamespaces;
  /// Gets or sets the include resource types property. This property sets the resource types to be included during backup.
  final pulumi.Input<List<String>>? includedResourceTypes;
  /// Gets or sets the include volume types property. This property sets the volume types to be included during backup.
  final pulumi.Input<List<String>>? includedVolumeTypes;
  /// Gets or sets the LabelSelectors property. This property sets the resource with such label selectors to be included during backup.
  final pulumi.Input<List<String>>? labelSelectors;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'KubernetesClusterBackupDatasourceParameters'.
  final pulumi.Input<String> objectType;
  /// Gets or sets the volume snapshot property. This property if enabled will take volume snapshots during backup.
  final pulumi.Input<bool> snapshotVolumes;

  /// Creates a new [KubernetesClusterBackupDatasourceParameters].
  /// [backupHookReferences] Gets or sets the backup hook references. This property sets the hook reference to be executed during backup.
  /// [excludedNamespaces] Gets or sets the exclude namespaces property. This property sets the namespaces to be excluded during backup.
  /// [excludedResourceTypes] Gets or sets the exclude resource types property. This property sets the resource types to be excluded during backup.
  /// [includeClusterScopeResources] Gets or sets the include cluster resources property. This property if enabled will include cluster scope resources during backup.
  /// [includedNamespaces] Gets or sets the include namespaces property. This property sets the namespaces to be included during backup.
  /// [includedResourceTypes] Gets or sets the include resource types property. This property sets the resource types to be included during backup.
  /// [includedVolumeTypes] Gets or sets the include volume types property. This property sets the volume types to be included during backup.
  /// [labelSelectors] Gets or sets the LabelSelectors property. This property sets the resource with such label selectors to be included during backup.
  /// [objectType] Type of the specific object - used for deserializing
  /// [snapshotVolumes] Gets or sets the volume snapshot property. This property if enabled will take volume snapshots during backup.
  KubernetesClusterBackupDatasourceParameters({
    this.backupHookReferences,
    this.excludedNamespaces,
    this.excludedResourceTypes,
    required this.includeClusterScopeResources,
    this.includedNamespaces,
    this.includedResourceTypes,
    this.includedVolumeTypes,
    this.labelSelectors,
    required this.objectType,
    required this.snapshotVolumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupHookReferences': ?pulumi.Input.mapOptionalInputValue<List<NamespacedNameResource>, List<Map<String, dynamic>>>(backupHookReferences, (value) => pulumi.Input.encodeList<NamespacedNameResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedNamespaces': ?excludedNamespaces,
      'excludedResourceTypes': ?excludedResourceTypes,
      'includeClusterScopeResources': includeClusterScopeResources,
      'includedNamespaces': ?includedNamespaces,
      'includedResourceTypes': ?includedResourceTypes,
      'includedVolumeTypes': ?includedVolumeTypes,
      'labelSelectors': ?labelSelectors,
      'objectType': objectType,
      'snapshotVolumes': snapshotVolumes,
    };
  }

  factory KubernetesClusterBackupDatasourceParameters.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterBackupDatasourceParameters(
      backupHookReferences: map['backupHookReferences'] == null ? null : (pulumi.Input.decodeList<NamespacedNameResource>(map['backupHookReferences']!, (value) => NamespacedNameResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludedNamespaces: map['excludedNamespaces'] == null ? null : ((map['excludedNamespaces']! as List).cast<String>()).input(),
      excludedResourceTypes: map['excludedResourceTypes'] == null ? null : ((map['excludedResourceTypes']! as List).cast<String>()).input(),
      includeClusterScopeResources: (map['includeClusterScopeResources'] as bool).input(),
      includedNamespaces: map['includedNamespaces'] == null ? null : ((map['includedNamespaces']! as List).cast<String>()).input(),
      includedResourceTypes: map['includedResourceTypes'] == null ? null : ((map['includedResourceTypes']! as List).cast<String>()).input(),
      includedVolumeTypes: map['includedVolumeTypes'] == null ? null : ((map['includedVolumeTypes']! as List).cast<String>()).input(),
      labelSelectors: map['labelSelectors'] == null ? null : ((map['labelSelectors']! as List).cast<String>()).input(),
      objectType: (map['objectType'] as String).input(),
      snapshotVolumes: (map['snapshotVolumes'] as bool).input(),
    );
  }
}

