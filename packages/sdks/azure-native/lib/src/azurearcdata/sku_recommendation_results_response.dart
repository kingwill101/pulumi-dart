// ignore_for_file: unused_element, unnecessary_cast

import 'sku_recommendation_results_azure_sql_database_response.dart';
import 'sku_recommendation_results_azure_sql_managed_instance_response.dart';
import 'sku_recommendation_results_azure_sql_virtual_machine_response.dart';

/// SKU Recommendation results for Azure migration targets for SQL Server.
class SkuRecommendationResultsResponse {
  /// SKU Recommendation results for Azure SQL Database.
  final SkuRecommendationResultsAzureSqlDatabaseResponse? azureSqlDatabase;
  /// SKU Recommendation results for Azure SQL Managed Instance.
  final SkuRecommendationResultsAzureSqlManagedInstanceResponse? azureSqlManagedInstance;
  /// SKU Recommendation results for Azure SQL Virtual Machine.
  final SkuRecommendationResultsAzureSqlVirtualMachineResponse? azureSqlVirtualMachine;

  /// Creates a new [SkuRecommendationResultsResponse].
  /// [azureSqlDatabase] SKU Recommendation results for Azure SQL Database.
  /// [azureSqlManagedInstance] SKU Recommendation results for Azure SQL Managed Instance.
  /// [azureSqlVirtualMachine] SKU Recommendation results for Azure SQL Virtual Machine.
  SkuRecommendationResultsResponse({
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

  factory SkuRecommendationResultsResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsResponse(
      azureSqlDatabase: map['azureSqlDatabase'] == null ? null : SkuRecommendationResultsAzureSqlDatabaseResponse.fromMap((map['azureSqlDatabase'] as Map).cast<String, dynamic>()),
      azureSqlManagedInstance: map['azureSqlManagedInstance'] == null ? null : SkuRecommendationResultsAzureSqlManagedInstanceResponse.fromMap((map['azureSqlManagedInstance'] as Map).cast<String, dynamic>()),
      azureSqlVirtualMachine: map['azureSqlVirtualMachine'] == null ? null : SkuRecommendationResultsAzureSqlVirtualMachineResponse.fromMap((map['azureSqlVirtualMachine'] as Map).cast<String, dynamic>()),
    );
  }
}

