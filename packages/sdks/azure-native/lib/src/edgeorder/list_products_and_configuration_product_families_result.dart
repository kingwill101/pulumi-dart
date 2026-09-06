// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_family_response.dart';

/// Result data returned by listProductsAndConfigurationProductFamilies.
class ListProductsAndConfigurationProductFamiliesResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The ProductFamily items on this page
  final List<ProductFamilyResponse>? value;

  /// Creates a new [ListProductsAndConfigurationProductFamiliesResult].
  /// [nextLink] The link to the next page of items
  /// [value] The ProductFamily items on this page
  const ListProductsAndConfigurationProductFamiliesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ProductFamilyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListProductsAndConfigurationProductFamiliesResult.fromMap(Map<String, dynamic> map) {
    return ListProductsAndConfigurationProductFamiliesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProductFamilyResponse>(guardedValue, (value) => ProductFamilyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
