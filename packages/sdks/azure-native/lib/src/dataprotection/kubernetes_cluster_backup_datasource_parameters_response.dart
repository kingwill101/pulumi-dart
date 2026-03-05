// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_name_resource_response.dart';

/// Parameters for Kubernetes Cluster Backup Datasource
class KubernetesClusterBackupDatasourceParametersResponse {
  /// Gets or sets the backup hook references. This property sets the hook reference to be executed during backup.
  final pulumi.Input<List<NamespacedNameResourceResponse>>? backupHookReferences;
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

  /// Creates a new [KubernetesClusterBackupDatasourceParametersResponse].
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
  KubernetesClusterBackupDatasourceParametersResponse({
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
      'backupHookReferences': ?pulumi.Input.mapOptionalInputValue<List<NamespacedNameResourceResponse>, List<Map<String, dynamic>>>(backupHookReferences, (value) => pulumi.Input.encodeList<NamespacedNameResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory KubernetesClusterBackupDatasourceParametersResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterBackupDatasourceParametersResponse(
      backupHookReferences: (() { final guardedValue = map['backupHookReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespacedNameResourceResponse>(guardedValue, (value) => NamespacedNameResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludedNamespaces: (() { final guardedValue = map['excludedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedResourceTypes: (() { final guardedValue = map['excludedResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeClusterScopeResources: pulumi.Input.fromValue(map['includeClusterScopeResources'] as bool),
      includedNamespaces: (() { final guardedValue = map['includedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedResourceTypes: (() { final guardedValue = map['includedResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedVolumeTypes: (() { final guardedValue = map['includedVolumeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labelSelectors: (() { final guardedValue = map['labelSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      snapshotVolumes: pulumi.Input.fromValue(map['snapshotVolumes'] as bool),
    );
  }
}

