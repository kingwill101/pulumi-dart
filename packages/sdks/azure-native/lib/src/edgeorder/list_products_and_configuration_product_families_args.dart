// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_subscription_details.dart';
import 'filterable_property.dart';

/// {@template pulumi_edgeorder_list_products_and_configuration_product_families_args_doc}
/// Arguments for listProductsAndConfigurationProductFamilies.
/// {@endtemplate}
/// {@macro pulumi_edgeorder_list_products_and_configuration_product_families_args_doc}
class ListProductsAndConfigurationProductFamiliesArgs {
  /// Customer subscription properties. Clients can display available products to unregistered customers by explicitly passing subscription details.
  final pulumi.Input<CustomerSubscriptionDetails>? customerSubscriptionDetails;
  /// $expand is supported on configurations parameter for product, which provides details on the configurations for the product.
  final pulumi.Input<String>? expand;
  /// Dictionary of filterable properties on product family.
  final pulumi.Input<Map<String, List<FilterableProperty>>> filterableProperties;
  /// $skipToken is supported on list of product families, which provides the next page in the list of product families.
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListProductsAndConfigurationProductFamiliesArgs].
  /// [customerSubscriptionDetails] Customer subscription properties. Clients can display available products to unregistered customers by explicitly passing subscription details.
  /// [expand] $expand is supported on configurations parameter for product, which provides details on the configurations for the product.
  /// [filterableProperties] Dictionary of filterable properties on product family.
  /// [skipToken] $skipToken is supported on list of product families, which provides the next page in the list of product families.
  ListProductsAndConfigurationProductFamiliesArgs({
    this.customerSubscriptionDetails,
    this.expand,
    required this.filterableProperties,
    this.skipToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerSubscriptionDetails': ?pulumi.Input.mapOptionalInputValue<CustomerSubscriptionDetails, Map<String, dynamic>>(customerSubscriptionDetails, (value) => value.toMap()),
      'expand': ?expand,
      'filterableProperties': pulumi.Input.mapInputValue<Map<String, List<FilterableProperty>>, Map<String, List<Map<String, dynamic>>>>(filterableProperties, (value) => pulumi.Input.encodeMapValues<List<FilterableProperty>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<FilterableProperty, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'skipToken': ?skipToken,
    };
  }

  factory ListProductsAndConfigurationProductFamiliesArgs.fromMap(Map<String, dynamic> map) {
    return ListProductsAndConfigurationProductFamiliesArgs(
      customerSubscriptionDetails: map['customerSubscriptionDetails'] == null ? null : (CustomerSubscriptionDetails.fromMap((map['customerSubscriptionDetails'] as Map).cast<String, dynamic>())).input(),
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      filterableProperties: (pulumi.Input.decodeMapValues<List<FilterableProperty>>(map['filterableProperties'], (value) => pulumi.Input.decodeList<FilterableProperty>(value, (value) => FilterableProperty.fromMap((value as Map).cast<String, dynamic>())))).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken'] as String).input(),
    );
  }
}

