// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_skus_nested_resource_type_first_args_doc}
/// Arguments for getSkusNestedResourceTypeFirst.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_skus_nested_resource_type_first_args_doc}
class GetSkusNestedResourceTypeFirstArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String> sku;

  /// Creates a new [GetSkusNestedResourceTypeFirstArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  GetSkusNestedResourceTypeFirstArgs({
    required String nestedResourceTypeFirst,
    required String providerNamespace,
    required String resourceType,
    required String sku,
  }) :
      nestedResourceTypeFirst = pulumi.Input.asInput<String>(nestedResourceTypeFirst),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      sku = pulumi.Input.asInput<String>(sku);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': sku,
    };
  }

  factory GetSkusNestedResourceTypeFirstArgs.fromMap(Map<String, dynamic> map) {
    return GetSkusNestedResourceTypeFirstArgs(
      nestedResourceTypeFirst: map['nestedResourceTypeFirst'] as String,
      providerNamespace: map['providerNamespace'] as String,
      resourceType: map['resourceType'] as String,
      sku: map['sku'] as String,
    );
  }
}

