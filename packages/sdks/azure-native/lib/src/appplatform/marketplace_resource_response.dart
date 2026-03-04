// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Purchasing 3rd Party product for one Azure Spring Apps instance
class MarketplaceResourceResponse {
  /// The plan id of the 3rd Party Artifact that is being procured.
  final pulumi.Input<String>? plan;

  /// The 3rd Party artifact that is being procured.
  final pulumi.Input<String>? product;

  /// The publisher id of the 3rd Party Artifact that is being bought.
  final pulumi.Input<String>? publisher;

  /// Creates a new [MarketplaceResourceResponse].
  /// [plan] The plan id of the 3rd Party Artifact that is being procured.
  /// [product] The 3rd Party artifact that is being procured.
  /// [publisher] The publisher id of the 3rd Party Artifact that is being bought.
  MarketplaceResourceResponse({this.plan, this.product, this.publisher});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': ?plan,
      'product': ?product,
      'publisher': ?publisher,
    };
  }

  factory MarketplaceResourceResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceResourceResponse(
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      product: (() {
        final guardedValue = map['product'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisher: (() {
        final guardedValue = map['publisher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
