// ignore_for_file: unused_element, unnecessary_cast


/// The Monthly cost of the particular SKU.
class SkuRecommendationResultsMonthlyCostResponse {
  /// Represents the Cost of Compute.
  final double? computeCost;
  /// Represents the Cost of Storage.
  final double? storageCost;
  /// Represents the Total Cost.
  final double? totalCost;

  /// Creates a new [SkuRecommendationResultsMonthlyCostResponse].
  /// [computeCost] Represents the Cost of Compute.
  /// [storageCost] Represents the Cost of Storage.
  /// [totalCost] Represents the Total Cost.
  SkuRecommendationResultsMonthlyCostResponse({
    this.computeCost,
    this.storageCost,
    this.totalCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCost': ?computeCost,
      'storageCost': ?storageCost,
      'totalCost': ?totalCost,
    };
  }

  factory SkuRecommendationResultsMonthlyCostResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsMonthlyCostResponse(
      computeCost: map['computeCost'] == null ? null : map['computeCost'] as double,
      storageCost: map['storageCost'] == null ? null : map['storageCost'] as double,
      totalCost: map['totalCost'] == null ? null : map['totalCost'] as double,
    );
  }
}

