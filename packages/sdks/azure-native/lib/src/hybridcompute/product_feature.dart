// ignore_for_file: unused_element, unnecessary_cast


/// Product Feature
class ProductFeature {
  /// Product feature name.
  final String? name;
  /// Indicates the current status of the product features.
  final String? subscriptionStatus;

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
      name: map['name'] == null ? null : map['name'] as String,
      subscriptionStatus: map['subscriptionStatus'] == null ? null : map['subscriptionStatus'] as String,
    );
  }
}

