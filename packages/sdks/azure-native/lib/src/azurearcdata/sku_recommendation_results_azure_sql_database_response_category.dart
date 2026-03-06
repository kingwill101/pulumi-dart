// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SkuRecommendationResultsAzureSqlDatabaseResponseCategory {
  /// The compute tier of the target SKU.
  final pulumi.Input<String>? computeTier;
  /// The hardware type of the target SKU.
  final pulumi.Input<String>? hardwareType;
  /// The SQL purchasing model of the target SKU.
  final pulumi.Input<String>? sqlPurchasingModel;
  /// The SQL service tier of the target SKU.
  final pulumi.Input<String>? sqlServiceTier;
  /// Indicates if zone redundancy is available for the target SKU.
  final pulumi.Input<bool>? zoneRedundancyAvailable;

  /// Creates a new [SkuRecommendationResultsAzureSqlDatabaseResponseCategory].
  /// [computeTier] The compute tier of the target SKU.
  /// [hardwareType] The hardware type of the target SKU.
  /// [sqlPurchasingModel] The SQL purchasing model of the target SKU.
  /// [sqlServiceTier] The SQL service tier of the target SKU.
  /// [zoneRedundancyAvailable] Indicates if zone redundancy is available for the target SKU.
  const SkuRecommendationResultsAzureSqlDatabaseResponseCategory({
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

  factory SkuRecommendationResultsAzureSqlDatabaseResponseCategory.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlDatabaseResponseCategory(
      computeTier: (() { final guardedValue = map['computeTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardwareType: (() { final guardedValue = map['hardwareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlPurchasingModel: (() { final guardedValue = map['sqlPurchasingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServiceTier: (() { final guardedValue = map['sqlServiceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneRedundancyAvailable: (() { final guardedValue = map['zoneRedundancyAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

