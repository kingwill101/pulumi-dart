// ignore_for_file: unused_element, unnecessary_cast


/// The plan object in Azure Resource Manager, represents a marketplace plan.
class ArmPlanResponse {
  /// The name.
  final String? name;
  /// The product.
  final String? product;
  /// The promotion code.
  final String? promotionCode;
  /// The publisher.
  final String? publisher;
  /// Version of product.
  final String? version;

  /// Creates a new [ArmPlanResponse].
  /// [name] The name.
  /// [product] The product.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher.
  /// [version] Version of product.
  ArmPlanResponse({
    this.name,
    this.product,
    this.promotionCode,
    this.publisher,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'promotionCode': ?promotionCode,
      'publisher': ?publisher,
      'version': ?version,
    };
  }

  factory ArmPlanResponse.fromMap(Map<String, dynamic> map) {
    return ArmPlanResponse(
      name: map['name'] == null ? null : map['name'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

