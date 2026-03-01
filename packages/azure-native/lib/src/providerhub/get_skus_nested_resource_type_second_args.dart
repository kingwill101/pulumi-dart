// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_skus_nested_resource_type_second_args_doc}
/// Arguments for getSkusNestedResourceTypeSecond.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_skus_nested_resource_type_second_args_doc}
class GetSkusNestedResourceTypeSecondArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;
  /// The second child resource type.
  final pulumi.Input<String> nestedResourceTypeSecond;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String> sku;

  /// Creates a new [GetSkusNestedResourceTypeSecondArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [nestedResourceTypeSecond] The second child resource type.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  GetSkusNestedResourceTypeSecondArgs({
    required String nestedResourceTypeFirst,
    required String nestedResourceTypeSecond,
    required String providerNamespace,
    required String resourceType,
    required String sku,
  }) :
      nestedResourceTypeFirst = pulumi.Input.asInput<String>(nestedResourceTypeFirst),
      nestedResourceTypeSecond = pulumi.Input.asInput<String>(nestedResourceTypeSecond),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      sku = pulumi.Input.asInput<String>(sku);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'nestedResourceTypeSecond': nestedResourceTypeSecond,
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': sku,
    };
  }

  factory GetSkusNestedResourceTypeSecondArgs.fromMap(Map<String, dynamic> map) {
    return GetSkusNestedResourceTypeSecondArgs(
      nestedResourceTypeFirst: map['nestedResourceTypeFirst'] as String,
      nestedResourceTypeSecond: map['nestedResourceTypeSecond'] as String,
      providerNamespace: map['providerNamespace'] as String,
      resourceType: map['resourceType'] as String,
      sku: map['sku'] as String,
    );
  }
}

