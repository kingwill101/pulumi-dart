// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_class_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';
import 'resource_filter_patch.dart';
import 'vendor_parameters_patch.dart';

/// ResourceClassParameters defines resource requests for a ResourceClass in an in-tree format understood by Kubernetes.
class ResourceClassParametersPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Filters describes additional contraints that must be met when using the class.
  final List<ResourceFilterPatch>? filters;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  final ResourceClassParametersReferencePatchResourceK8sIoV1alpha2? generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMetaPatch? metadata;
  /// VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  final List<VendorParametersPatch>? vendorParameters;

  /// Creates a new [ResourceClassParametersPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [filters] Filters describes additional contraints that must be met when using the class.
  /// [generatedFrom] If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  ResourceClassParametersPatch({
    this.apiVersion,
    this.filters,
    this.generatedFrom,
    this.kind,
    this.metadata,
    this.vendorParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<ResourceFilterPatch, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'generatedFrom': ?generatedFrom == null ? null : generatedFrom!.toMap(),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'vendorParameters': ?vendorParameters == null ? null : pulumi.Input.encodeList<VendorParametersPatch, Map<String, dynamic>>(vendorParameters!, (value) => value.toMap()),
    };
  }

  factory ResourceClassParametersPatch.fromMap(Map<String, dynamic> map) {
    return ResourceClassParametersPatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<ResourceFilterPatch>(map['filters'], (value) => ResourceFilterPatch.fromMap((value as Map).cast<String, dynamic>())),
      generatedFrom: map['generatedFrom'] == null ? null : ResourceClassParametersReferencePatchResourceK8sIoV1alpha2.fromMap((map['generatedFrom'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      vendorParameters: map['vendorParameters'] == null ? null : pulumi.Input.decodeList<VendorParametersPatch>(map['vendorParameters'], (value) => VendorParametersPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

