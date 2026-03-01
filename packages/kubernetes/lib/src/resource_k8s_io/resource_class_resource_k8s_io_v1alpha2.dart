// ignore_for_file: unused_element, unnecessary_cast

import '../core/node_selector.dart';
import '../meta/object_meta.dart';
import 'resource_class_parameters_reference_resource_k8s_io_v1alpha2.dart';

/// ResourceClass is used by administrators to influence how resources are allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClassResourceK8sIoV1alpha2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  ///
  /// Resource drivers have a unique name in forward domain order (acme.example.com).
  final String driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMeta? metadata;
  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  final ResourceClassParametersReferenceResourceK8sIoV1alpha2? parametersRef;
  /// If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  final bool? structuredParameters;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  final NodeSelector? suitableNodes;

  /// Creates a new [ResourceClassResourceK8sIoV1alpha2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [parametersRef] ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  /// [structuredParameters] If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ResourceClassResourceK8sIoV1alpha2({
    this.apiVersion,
    required this.driverName,
    this.kind,
    this.metadata,
    this.parametersRef,
    this.structuredParameters,
    this.suitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': driverName,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'parametersRef': ?parametersRef == null ? null : parametersRef!.toMap(),
      'structuredParameters': ?structuredParameters,
      'suitableNodes': ?suitableNodes == null ? null : suitableNodes!.toMap(),
    };
  }

  factory ResourceClassResourceK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return ResourceClassResourceK8sIoV1alpha2(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      driverName: map['driverName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      parametersRef: map['parametersRef'] == null ? null : ResourceClassParametersReferenceResourceK8sIoV1alpha2.fromMap((map['parametersRef'] as Map).cast<String, dynamic>()),
      structuredParameters: map['structuredParameters'] == null ? null : map['structuredParameters'] as bool,
      suitableNodes: map['suitableNodes'] == null ? null : NodeSelector.fromMap((map['suitableNodes'] as Map).cast<String, dynamic>()),
    );
  }
}

