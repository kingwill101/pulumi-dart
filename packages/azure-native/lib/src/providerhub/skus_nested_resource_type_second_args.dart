// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_resource_properties.dart';

/// {@template pulumi_providerhub_skus_nested_resource_type_second_args_doc}
/// The set of arguments for SkusNestedResourceTypeSecond.
/// {@endtemplate}
/// {@macro pulumi_providerhub_skus_nested_resource_type_second_args_doc}
class SkusNestedResourceTypeSecondArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;
  /// The second child resource type.
  final pulumi.Input<String> nestedResourceTypeSecond;
  final pulumi.Input<SkuResourceProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String>? sku;

  /// Creates a new [SkusNestedResourceTypeSecondArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [nestedResourceTypeSecond] The second child resource type.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  SkusNestedResourceTypeSecondArgs({
    required String nestedResourceTypeFirst,
    required String nestedResourceTypeSecond,
    SkuResourceProperties? properties,
    required String providerNamespace,
    required String resourceType,
    String? sku,
  }) :
      nestedResourceTypeFirst = pulumi.Input.asInput<String>(nestedResourceTypeFirst),
      nestedResourceTypeSecond = pulumi.Input.asInput<String>(nestedResourceTypeSecond),
      properties = pulumi.Input.asOptionalInput<SkuResourceProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      sku = pulumi.Input.asOptionalInput<String>(sku);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'nestedResourceTypeSecond': nestedResourceTypeSecond,
      'properties': ?pulumi.Input.mapOptionalInputValue<SkuResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': ?sku,
    };
  }

  factory SkusNestedResourceTypeSecondArgs.fromMap(Map<String, dynamic> map) {
    return SkusNestedResourceTypeSecondArgs(
      nestedResourceTypeFirst: map['nestedResourceTypeFirst'] as String,
      nestedResourceTypeSecond: map['nestedResourceTypeSecond'] as String,
      properties: map['properties'] == null ? null : SkuResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      providerNamespace: map['providerNamespace'] as String,
      resourceType: map['resourceType'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
    );
  }
}

