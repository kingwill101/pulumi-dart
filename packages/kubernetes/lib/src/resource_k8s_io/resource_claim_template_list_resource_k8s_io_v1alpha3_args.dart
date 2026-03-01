// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'resource_claim_template_resource_k8s_io_v1alpha3_resource.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_resource_claim_template_list_resource_k8s_io_v1alpha3_args_doc}
/// The set of arguments for ResourceClaimTemplateList.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_resource_claim_template_list_resource_k8s_io_v1alpha3_args_doc}
class ResourceClaimTemplateListResourceK8sIoV1alpha3Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Items is the list of resource claim templates.
  final pulumi.Input<List<ResourceClaimTemplateResourceK8sIoV1alpha3Resource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [ResourceClaimTemplateListResourceK8sIoV1alpha3Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is the list of resource claim templates.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata
  ResourceClaimTemplateListResourceK8sIoV1alpha3Args({
    String? apiVersion,
    required List<ResourceClaimTemplateResourceK8sIoV1alpha3Resource> items,
    String? kind,
    ListMeta? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<ResourceClaimTemplateResourceK8sIoV1alpha3Resource>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ResourceClaimTemplateListResourceK8sIoV1alpha3Args.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateListResourceK8sIoV1alpha3Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: (map['items'] as List).cast<ResourceClaimTemplateResourceK8sIoV1alpha3Resource>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

