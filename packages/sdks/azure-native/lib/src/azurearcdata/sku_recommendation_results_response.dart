// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_results_azure_sql_database_response.dart';
import 'sku_recommendation_results_azure_sql_managed_instance_response.dart';
import 'sku_recommendation_results_azure_sql_virtual_machine_response.dart';

/// SKU Recommendation results for Azure migration targets for SQL Server.
class SkuRecommendationResultsResponse {
  /// SKU Recommendation results for Azure SQL Database.
  final pulumi.Input<SkuRecommendationResultsAzureSqlDatabaseResponse>? azureSqlDatabase;
  /// SKU Recommendation results for Azure SQL Managed Instance.
  final pulumi.Input<SkuRecommendationResultsAzureSqlManagedInstanceResponse>? azureSqlManagedInstance;
  /// SKU Recommendation results for Azure SQL Virtual Machine.
  final pulumi.Input<SkuRecommendationResultsAzureSqlVirtualMachineResponse>? azureSqlVirtualMachine;

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
      'azureSqlDatabase': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlDatabaseResponse, Map<String, dynamic>>(azureSqlDatabase, (value) => value.toMap()),
      'azureSqlManagedInstance': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlManagedInstanceResponse, Map<String, dynamic>>(azureSqlManagedInstance, (value) => value.toMap()),
      'azureSqlVirtualMachine': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlVirtualMachineResponse, Map<String, dynamic>>(azureSqlVirtualMachine, (value) => value.toMap()),
    };
  }

  factory SkuRecommendationResultsResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsResponse(
      azureSqlDatabase: map['azureSqlDatabase'] == null ? null : (SkuRecommendationResultsAzureSqlDatabaseResponse.fromMap((map['azureSqlDatabase']! as Map).cast<String, dynamic>())).input(),
      azureSqlManagedInstance: map['azureSqlManagedInstance'] == null ? null : (SkuRecommendationResultsAzureSqlManagedInstanceResponse.fromMap((map['azureSqlManagedInstance']! as Map).cast<String, dynamic>())).input(),
      azureSqlVirtualMachine: map['azureSqlVirtualMachine'] == null ? null : (SkuRecommendationResultsAzureSqlVirtualMachineResponse.fromMap((map['azureSqlVirtualMachine']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

