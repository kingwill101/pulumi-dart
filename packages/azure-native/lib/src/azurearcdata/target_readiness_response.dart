// ignore_for_file: unused_element, unnecessary_cast

import 'sku_recommendation_summary_response.dart';

/// The target readiness for migration for this database.
class TargetReadinessResponse {
  /// The SKU recommendation summary.
  final SkuRecommendationSummaryResponse? azureSqlDatabase;
  /// The SKU recommendation summary.
  final SkuRecommendationSummaryResponse? azureSqlManagedInstance;
  /// The SKU recommendation summary.
  final SkuRecommendationSummaryResponse? azureSqlVirtualMachine;

  /// Creates a new [TargetReadinessResponse].
  /// [azureSqlDatabase] The SKU recommendation summary.
  /// [azureSqlManagedInstance] The SKU recommendation summary.
  /// [azureSqlVirtualMachine] The SKU recommendation summary.
  TargetReadinessResponse({
    this.azureSqlDatabase,
    this.azureSqlManagedInstance,
    this.azureSqlVirtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlDatabase': ?azureSqlDatabase == null ? null : azureSqlDatabase!.toMap(),
      'azureSqlManagedInstance': ?azureSqlManagedInstance == null ? null : azureSqlManagedInstance!.toMap(),
      'azureSqlVirtualMachine': ?azureSqlVirtualMachine == null ? null : azureSqlVirtualMachine!.toMap(),
    };
  }

  factory TargetReadinessResponse.fromMap(Map<String, dynamic> map) {
    return TargetReadinessResponse(
      azureSqlDatabase: map['azureSqlDatabase'] == null ? null : SkuRecommendationSummaryResponse.fromMap((map['azureSqlDatabase'] as Map).cast<String, dynamic>()),
      azureSqlManagedInstance: map['azureSqlManagedInstance'] == null ? null : SkuRecommendationSummaryResponse.fromMap((map['azureSqlManagedInstance'] as Map).cast<String, dynamic>()),
      azureSqlVirtualMachine: map['azureSqlVirtualMachine'] == null ? null : SkuRecommendationSummaryResponse.fromMap((map['azureSqlVirtualMachine'] as Map).cast<String, dynamic>()),
    );
  }
}

