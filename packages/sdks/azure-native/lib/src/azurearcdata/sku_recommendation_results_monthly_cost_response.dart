// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Monthly cost of the particular SKU.
class SkuRecommendationResultsMonthlyCostResponse {
  /// Represents the Cost of Compute.
  final pulumi.Input<double>? computeCost;
  /// Represents the Cost of Storage.
  final pulumi.Input<double>? storageCost;
  /// Represents the Total Cost.
  final pulumi.Input<double>? totalCost;

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
      computeCost: map['computeCost'] == null ? null : (map['computeCost'] as double).input(),
      storageCost: map['storageCost'] == null ? null : (map['storageCost'] as double).input(),
      totalCost: map['totalCost'] == null ? null : (map['totalCost'] as double).input(),
    );
  }
}

