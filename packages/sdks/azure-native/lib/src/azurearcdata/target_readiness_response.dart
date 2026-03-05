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
      azureSqlDatabase: (() { final guardedValue = map['azureSqlDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlManagedInstance: (() { final guardedValue = map['azureSqlManagedInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlVirtualMachine: (() { final guardedValue = map['azureSqlVirtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

