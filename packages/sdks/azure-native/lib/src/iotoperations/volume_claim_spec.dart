// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_reference.dart';
import 'local_kubernetes_reference.dart';
import 'volume_claim_resource_requirements.dart';
import 'volume_claim_spec_selector.dart';

/// VolumeClaimSpec properties
class VolumeClaimSpec {
  /// AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  final pulumi.Input<List<String>>? accessModes;

  /// This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.
  final pulumi.Input<LocalKubernetesReference>? dataSource;

  /// Specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef allows any non-core object, as well as PersistentVolumeClaim objects. * While DataSource ignores disallowed values (dropping them), DataSourceRef preserves all values, and generates an error if a disallowed value is specified. (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
  final pulumi.Input<KubernetesReference>? dataSourceRef;

  /// Resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  final pulumi.Input<VolumeClaimResourceRequirements>? resources;

  /// A label query over volumes to consider for binding.
  final pulumi.Input<VolumeClaimSpecSelector>? selector;

  /// Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
  final pulumi.Input<String>? storageClassName;

  /// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.
  final pulumi.Input<String>? volumeMode;

  /// VolumeName is the binding reference to the PersistentVolume backing this claim.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeClaimSpec].
  /// [accessModes] AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  /// [dataSource] This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.
  /// [dataSourceRef] Specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef allows any non-core object, as well as PersistentVolumeClaim objects. * While DataSource ignores disallowed values (dropping them), DataSourceRef preserves all values, and generates an error if a disallowed value is specified. (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
  /// [resources] Resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [selector] A label query over volumes to consider for binding.
  /// [storageClassName] Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
  /// [volumeMode] volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.
  /// [volumeName] VolumeName is the binding reference to the PersistentVolume backing this claim.
  VolumeClaimSpec({
    this.accessModes,
    this.dataSource,
    this.dataSourceRef,
    this.resources,
    this.selector,
    this.storageClassName,
    this.volumeMode,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'dataSource':
          ?pulumi.Input.mapOptionalInputValue<
            LocalKubernetesReference,
            Map<String, dynamic>
          >(dataSource, (value) => value.toMap()),
      'dataSourceRef':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesReference,
            Map<String, dynamic>
          >(dataSourceRef, (value) => value.toMap()),
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeClaimResourceRequirements,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'selector':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeClaimSpecSelector,
            Map<String, dynamic>
          >(selector, (value) => value.toMap()),
      'storageClassName': ?storageClassName,
      'volumeMode': ?volumeMode,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeClaimSpec.fromMap(Map<String, dynamic> map) {
    return VolumeClaimSpec(
      accessModes: (() {
        final guardedValue = map['accessModes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dataSource: (() {
        final guardedValue = map['dataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LocalKubernetesReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataSourceRef: (() {
        final guardedValue = map['dataSourceRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeClaimResourceRequirements.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selector: (() {
        final guardedValue = map['selector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeClaimSpecSelector.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageClassName: (() {
        final guardedValue = map['storageClassName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeMode: (() {
        final guardedValue = map['volumeMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeName: (() {
        final guardedValue = map['volumeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
