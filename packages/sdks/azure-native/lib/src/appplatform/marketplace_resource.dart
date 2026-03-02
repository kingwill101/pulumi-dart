// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Purchasing 3rd Party product for one Azure Spring Apps instance
class MarketplaceResource {
  /// The plan id of the 3rd Party Artifact that is being procured.
  final pulumi.Input<String>? plan;
  /// The 3rd Party artifact that is being procured.
  final pulumi.Input<String>? product;
  /// The publisher id of the 3rd Party Artifact that is being bought.
  final pulumi.Input<String>? publisher;

  /// Creates a new [MarketplaceResource].
  /// [plan] The plan id of the 3rd Party Artifact that is being procured.
  /// [product] The 3rd Party artifact that is being procured.
  /// [publisher] The publisher id of the 3rd Party Artifact that is being bought.
  MarketplaceResource({
    this.plan,
    this.product,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': ?plan,
      'product': ?product,
      'publisher': ?publisher,
    };
  }

  factory MarketplaceResource.fromMap(Map<String, dynamic> map) {
    return MarketplaceResource(
      plan: map['plan'] == null ? null : (map['plan']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
    );
  }
}

