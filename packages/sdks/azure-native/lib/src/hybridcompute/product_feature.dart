// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Product Feature
class ProductFeature {
  /// Product feature name.
  final pulumi.Input<String>? name;
  /// Indicates the current status of the product features.
  final pulumi.Input<String>? subscriptionStatus;

  /// Creates a new [ProductFeature].
  /// [name] Product feature name.
  /// [subscriptionStatus] Indicates the current status of the product features.
  ProductFeature({
    this.name,
    this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory ProductFeature.fromMap(Map<String, dynamic> map) {
    return ProductFeature(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subscriptionStatus: map['subscriptionStatus'] == null ? null : (map['subscriptionStatus']! as String).input(),
    );
  }
}

