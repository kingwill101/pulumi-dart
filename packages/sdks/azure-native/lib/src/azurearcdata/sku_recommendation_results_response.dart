// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_results_azure_sql_database_response.dart';
import 'sku_recommendation_results_azure_sql_managed_instance_response.dart';
import 'sku_recommendation_results_azure_sql_virtual_machine_response.dart';

/// SKU Recommendation results for Azure migration targets for SQL Server.
class SkuRecommendationResultsResponse {
  /// SKU Recommendation results for Azure SQL Database.
  final pulumi.Input<SkuRecommendationResultsAzureSqlDatabaseResponse?>? azureSqlDatabase;
  /// SKU Recommendation results for Azure SQL Managed Instance.
  final pulumi.Input<SkuRecommendationResultsAzureSqlManagedInstanceResponse?>? azureSqlManagedInstance;
  /// SKU Recommendation results for Azure SQL Virtual Machine.
  final pulumi.Input<SkuRecommendationResultsAzureSqlVirtualMachineResponse?>? azureSqlVirtualMachine;

  /// Creates a new [SkuRecommendationResultsResponse].
  /// [azureSqlDatabase] SKU Recommendation results for Azure SQL Database.
  /// [azureSqlManagedInstance] SKU Recommendation results for Azure SQL Managed Instance.
  /// [azureSqlVirtualMachine] SKU Recommendation results for Azure SQL Virtual Machine.
  const SkuRecommendationResultsResponse({
    this.azureSqlDatabase,
    this.azureSqlManagedInstance,
    this.azureSqlVirtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlDatabase': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlDatabaseResponse, Map<String, dynamic>>(azureSqlDatabase, (value) => value.toMap()),
      'azureSqlManagedInstance': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlManagedInstanceResponse, Map<String, dynamic>>(azureSqlManagedInstance, (value) => value.toMap()),
      'azureSqlVirtualMachine': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlVirtualMachineResponse, Map<String, dynamic>>(azureSqlVirtualMachine, (value) => value.toMap()),
    };
  }

  factory SkuRecommendationResultsResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsResponse(
      azureSqlDatabase: (() { final guardedValue = map['azureSqlDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationResultsAzureSqlDatabaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlManagedInstance: (() { final guardedValue = map['azureSqlManagedInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationResultsAzureSqlManagedInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlVirtualMachine: (() { final guardedValue = map['azureSqlVirtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuRecommendationResultsAzureSqlVirtualMachineResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
