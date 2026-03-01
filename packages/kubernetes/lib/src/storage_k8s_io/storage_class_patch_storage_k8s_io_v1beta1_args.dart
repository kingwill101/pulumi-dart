// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/topology_selector_term_patch.dart';
import '../meta/object_meta_patch.dart';

/// {@template pulumi_storage_k8s_io_v1beta1_storage_class_patch_storage_k8s_io_v1beta1_args_doc}
/// The set of arguments for StorageClassPatch.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1beta1_storage_class_patch_storage_k8s_io_v1beta1_args_doc}
class StorageClassPatchStorageK8sIoV1beta1Args {
  /// AllowVolumeExpansion shows whether the storage class allow volume expand
  final pulumi.Input<bool>? allowVolumeExpansion;
  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<List<TopologySelectorTermPatch>>? allowedTopologies;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final pulumi.Input<List<String>>? mountOptions;
  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Provisioner indicates the type of the provisioner.
  final pulumi.Input<String>? provisioner;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  final pulumi.Input<String>? reclaimPolicy;
  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<String>? volumeBindingMode;

  /// Creates a new [StorageClassPatchStorageK8sIoV1beta1Args].
  /// [allowVolumeExpansion] AllowVolumeExpansion shows whether the storage class allow volume expand
  /// [allowedTopologies] Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [mountOptions] Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  /// [parameters] Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  /// [provisioner] Provisioner indicates the type of the provisioner.
  /// [reclaimPolicy] Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  /// [volumeBindingMode] VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  StorageClassPatchStorageK8sIoV1beta1Args({
    bool? allowVolumeExpansion,
    List<TopologySelectorTermPatch>? allowedTopologies,
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    List<String>? mountOptions,
    Map<String, String>? parameters,
    String? provisioner,
    String? reclaimPolicy,
    String? volumeBindingMode,
  }) :
      allowVolumeExpansion = pulumi.Input.asOptionalInput<bool>(allowVolumeExpansion),
      allowedTopologies = pulumi.Input.asOptionalInput<List<TopologySelectorTermPatch>>(allowedTopologies),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      mountOptions = pulumi.Input.asOptionalInput<List<String>>(mountOptions),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      provisioner = pulumi.Input.asOptionalInput<String>(provisioner),
      reclaimPolicy = pulumi.Input.asOptionalInput<String>(reclaimPolicy),
      volumeBindingMode = pulumi.Input.asOptionalInput<String>(volumeBindingMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVolumeExpansion': ?allowVolumeExpansion,
      'allowedTopologies': ?pulumi.Input.mapOptionalInputValue<List<TopologySelectorTermPatch>, List<Map<String, dynamic>>>(allowedTopologies, (value) => pulumi.Input.encodeList<TopologySelectorTermPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'mountOptions': ?mountOptions,
      'parameters': ?parameters,
      'provisioner': ?provisioner,
      'reclaimPolicy': ?reclaimPolicy,
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory StorageClassPatchStorageK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return StorageClassPatchStorageK8sIoV1beta1Args(
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : map['allowVolumeExpansion'] as bool,
      allowedTopologies: map['allowedTopologies'] == null ? null : pulumi.Input.decodeList<TopologySelectorTermPatch>(map['allowedTopologies'], (value) => TopologySelectorTermPatch.fromMap((value as Map).cast<String, dynamic>())),
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      provisioner: map['provisioner'] == null ? null : map['provisioner'] as String,
      reclaimPolicy: map['reclaimPolicy'] == null ? null : map['reclaimPolicy'] as String,
      volumeBindingMode: map['volumeBindingMode'] == null ? null : map['volumeBindingMode'] as String,
    );
  }
}

