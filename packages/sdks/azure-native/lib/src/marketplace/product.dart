// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Product {
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? displayName;
  final pulumi.Input<List<String>>? pricingTypes;
  final pulumi.Input<String>? productType;
  final pulumi.Input<String>? publisherDisplayName;
  final pulumi.Input<double>? ratingAverage;
  final pulumi.Input<String>? smallIconUri;
  final pulumi.Input<List<String>>? storeFronts;
  final pulumi.Input<String>? summary;
  final pulumi.Input<String>? uniqueProductId;

  /// Creates a new [Product].
  /// [description] Optional.
  /// [displayName] Optional.
  /// [pricingTypes] Optional.
  /// [productType] Optional.
  /// [publisherDisplayName] Optional.
  /// [ratingAverage] Optional.
  /// [smallIconUri] Optional.
  /// [storeFronts] Optional.
  /// [summary] Optional.
  /// [uniqueProductId] Optional.
  const Product({
    this.description,
    this.displayName,
    this.pricingTypes,
    this.productType,
    this.publisherDisplayName,
    this.ratingAverage,
    this.smallIconUri,
    this.storeFronts,
    this.summary,
    this.uniqueProductId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'pricingTypes': ?pricingTypes,
      'productType': ?productType,
      'publisherDisplayName': ?publisherDisplayName,
      'ratingAverage': ?ratingAverage,
      'smallIconUri': ?smallIconUri,
      'storeFronts': ?storeFronts,
      'summary': ?summary,
      'uniqueProductId': ?uniqueProductId,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pricingTypes: (() { final guardedValue = map['pricingTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherDisplayName: (() { final guardedValue = map['publisherDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ratingAverage: (() { final guardedValue = map['ratingAverage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      smallIconUri: (() { final guardedValue = map['smallIconUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeFronts: (() { final guardedValue = map['storeFronts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueProductId: (() { final guardedValue = map['uniqueProductId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
