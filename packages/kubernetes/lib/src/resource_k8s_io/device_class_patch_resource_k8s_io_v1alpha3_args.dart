// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'device_class_spec_patch_resource_k8s_io_v1alpha3.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_device_class_patch_resource_k8s_io_v1alpha3_args_doc}
/// The set of arguments for DeviceClassPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_device_class_patch_resource_k8s_io_v1alpha3_args_doc}
class DeviceClassPatchResourceK8sIoV1alpha3Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Spec defines what can be allocated and how to configure it.
  ///
  /// This is mutable. Consumers have to be prepared for classes changing at any time, either because they get updated or replaced. Claim allocations are done once based on whatever was set in classes at the time of allocation.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<DeviceClassSpecPatchResourceK8sIoV1alpha3>? spec;

  /// Creates a new [DeviceClassPatchResourceK8sIoV1alpha3Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec defines what can be allocated and how to configure it.
  DeviceClassPatchResourceK8sIoV1alpha3Args({
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    DeviceClassSpecPatchResourceK8sIoV1alpha3? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<DeviceClassSpecPatchResourceK8sIoV1alpha3>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<DeviceClassSpecPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DeviceClassPatchResourceK8sIoV1alpha3Args.fromMap(Map<String, dynamic> map) {
    return DeviceClassPatchResourceK8sIoV1alpha3Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : DeviceClassSpecPatchResourceK8sIoV1alpha3.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

