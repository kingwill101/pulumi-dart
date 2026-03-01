// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';

/// PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
class PriorityClassPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  final String? description;
  /// globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  final bool? globalDefault;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMetaPatch? metadata;
  /// preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  final String? preemptionPolicy;
  /// value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  final int? value;

  /// Creates a new [PriorityClassPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [description] description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  /// [globalDefault] globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  /// [value] value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  PriorityClassPatch({
    this.apiVersion,
    this.description,
    this.globalDefault,
    this.kind,
    this.metadata,
    this.preemptionPolicy,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'description': ?description,
      'globalDefault': ?globalDefault,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'preemptionPolicy': ?preemptionPolicy,
      'value': ?value,
    };
  }

  factory PriorityClassPatch.fromMap(Map<String, dynamic> map) {
    return PriorityClassPatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      globalDefault: map['globalDefault'] == null ? null : map['globalDefault'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      preemptionPolicy: map['preemptionPolicy'] == null ? null : map['preemptionPolicy'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

