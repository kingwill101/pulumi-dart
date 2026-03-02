// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_summary_response.dart';

/// The target readiness for migration for this database.
class TargetReadinessResponse {
  /// The SKU recommendation summary.
  final pulumi.Input<SkuRecommendationSummaryResponse>? azureSqlDatabase;
  /// The SKU recommendation summary.
  final pulumi.Input<SkuRecommendationSummaryResponse>? azureSqlManagedInstance;
  /// The SKU recommendation summary.
  final pulumi.Input<SkuRecommendationSummaryResponse>? azureSqlVirtualMachine;

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
      'azureSqlDatabase': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationSummaryResponse, Map<String, dynamic>>(azureSqlDatabase, (value) => value.toMap()),
      'azureSqlManagedInstance': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationSummaryResponse, Map<String, dynamic>>(azureSqlManagedInstance, (value) => value.toMap()),
      'azureSqlVirtualMachine': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationSummaryResponse, Map<String, dynamic>>(azureSqlVirtualMachine, (value) => value.toMap()),
    };
  }

  factory TargetReadinessResponse.fromMap(Map<String, dynamic> map) {
    return TargetReadinessResponse(
      azureSqlDatabase: map['azureSqlDatabase'] == null ? null : (SkuRecommendationSummaryResponse.fromMap((map['azureSqlDatabase']! as Map).cast<String, dynamic>())).input(),
      azureSqlManagedInstance: map['azureSqlManagedInstance'] == null ? null : (SkuRecommendationSummaryResponse.fromMap((map['azureSqlManagedInstance']! as Map).cast<String, dynamic>())).input(),
      azureSqlVirtualMachine: map['azureSqlVirtualMachine'] == null ? null : (SkuRecommendationSummaryResponse.fromMap((map['azureSqlVirtualMachine']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

