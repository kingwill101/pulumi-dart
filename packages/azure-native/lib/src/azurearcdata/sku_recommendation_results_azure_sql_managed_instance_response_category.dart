// ignore_for_file: unused_element, unnecessary_cast


class SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory {
  /// The compute tier of the target SKU.
  final String? computeTier;
  /// The hardware type of the target SKU.
  final String? hardwareType;
  /// The SQL purchasing model of the target SKU.
  final String? sqlPurchasingModel;
  /// The SQL service tier of the target SKU.
  final String? sqlServiceTier;
  /// Indicates if zone redundancy is available for the target SKU.
  final bool? zoneRedundancyAvailable;

  /// Creates a new [SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory].
  /// [computeTier] The compute tier of the target SKU.
  /// [hardwareType] The hardware type of the target SKU.
  /// [sqlPurchasingModel] The SQL purchasing model of the target SKU.
  /// [sqlServiceTier] The SQL service tier of the target SKU.
  /// [zoneRedundancyAvailable] Indicates if zone redundancy is available for the target SKU.
  SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory({
    this.computeTier,
    this.hardwareType,
    this.sqlPurchasingModel,
    this.sqlServiceTier,
    this.zoneRedundancyAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeTier': ?computeTier,
      'hardwareType': ?hardwareType,
      'sqlPurchasingModel': ?sqlPurchasingModel,
      'sqlServiceTier': ?sqlServiceTier,
      'zoneRedundancyAvailable': ?zoneRedundancyAvailable,
    };
  }

  factory SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory(
      computeTier: map['computeTier'] == null ? null : map['computeTier'] as String,
      hardwareType: map['hardwareType'] == null ? null : map['hardwareType'] as String,
      sqlPurchasingModel: map['sqlPurchasingModel'] == null ? null : map['sqlPurchasingModel'] as String,
      sqlServiceTier: map['sqlServiceTier'] == null ? null : map['sqlServiceTier'] as String,
      zoneRedundancyAvailable: map['zoneRedundancyAvailable'] == null ? null : map['zoneRedundancyAvailable'] as bool,
    );
  }
}

