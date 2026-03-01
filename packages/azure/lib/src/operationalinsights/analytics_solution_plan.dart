// ignore_for_file: unused_element, unnecessary_cast


class AnalyticsSolutionPlan {
  final String? name;
  /// The product name of the solution. For example `OMSGallery/Containers`. Changing this forces a new resource to be created.
  final String product;
  /// A promotion code to be used with the solution. Changing this forces a new resource to be created.
  final String? promotionCode;
  /// The publisher of the solution. For example `Microsoft`. Changing this forces a new resource to be created.
  final String publisher;

  /// Creates a new [AnalyticsSolutionPlan].
  /// [name] Optional.
  /// [product] The product name of the solution. For example `OMSGallery/Containers`. Changing this forces a new resource to be created.
  /// [promotionCode] A promotion code to be used with the solution. Changing this forces a new resource to be created.
  /// [publisher] The publisher of the solution. For example `Microsoft`. Changing this forces a new resource to be created.
  AnalyticsSolutionPlan({
    this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
    };
  }

  factory AnalyticsSolutionPlan.fromMap(Map<String, dynamic> map) {
    return AnalyticsSolutionPlan(
      name: map['name'] == null ? null : map['name'] as String,
      product: map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

