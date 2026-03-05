import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_migrations_mongo_to_cosmos_db_rumongo_args.dart';
import 'get_database_migrations_mongo_to_cosmos_db_rumongo_result.dart';
import 'get_database_migrations_mongo_to_cosmos_dbv_core_mongo_args.dart';
import 'get_database_migrations_mongo_to_cosmos_dbv_core_mongo_result.dart';
import 'get_database_migrations_sql_db_args.dart';
import 'get_database_migrations_sql_db_result.dart';
import 'get_database_migrations_sql_mi_args.dart';
import 'get_database_migrations_sql_mi_result.dart';
import 'get_database_migrations_sql_vm_args.dart';
import 'get_database_migrations_sql_vm_result.dart';
import 'get_file_args.dart';
import 'get_file_result.dart';
import 'get_migration_service_args.dart';
import 'get_migration_service_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_service_task_args.dart';
import 'get_service_task_result.dart';
import 'get_sql_migration_service_args.dart';
import 'get_sql_migration_service_result.dart';
import 'get_task_args.dart';
import 'get_task_result.dart';
import 'list_sql_migration_service_auth_keys_args.dart';
import 'list_sql_migration_service_auth_keys_result.dart';
import 'list_sql_migration_service_monitoring_data_args.dart';
import 'list_sql_migration_service_monitoring_data_result.dart';

/// Get Database Migration resource.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_database_migrations_mongo_to_cosmos_db_rumongo_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMigrationsMongoToCosmosDbRUMongoResult>
getDatabaseMigrationsMongoToCosmosDbRUMongo(
  GetDatabaseMigrationsMongoToCosmosDbRUMongoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getDatabaseMigrationsMongoToCosmosDbRUMongo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMigrationsMongoToCosmosDbRUMongoResult.fromMap(result);
}

/// Get Database Migration resource.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_database_migrations_mongo_to_cosmos_dbv_core_mongo_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult>
getDatabaseMigrationsMongoToCosmosDbvCoreMongo(
  GetDatabaseMigrationsMongoToCosmosDbvCoreMongoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getDatabaseMigrationsMongoToCosmosDbvCoreMongo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult.fromMap(result);
}

/// Retrieve the Database Migration resource.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_database_migrations_sql_db_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMigrationsSqlDbResult> getDatabaseMigrationsSqlDb(
  GetDatabaseMigrationsSqlDbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getDatabaseMigrationsSqlDb',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMigrationsSqlDbResult.fromMap(result);
}

/// Retrieve the specified database migration for a given SQL Managed Instance.
///
/// Uses Azure REST API version 2025-06-30.
///
/// Other available API versions: 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_database_migrations_sql_mi_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMigrationsSqlMiResult> getDatabaseMigrationsSqlMi(
  GetDatabaseMigrationsSqlMiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getDatabaseMigrationsSqlMi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMigrationsSqlMiResult.fromMap(result);
}

/// Retrieve the specified database migration for a given SQL VM.
///
/// Uses Azure REST API version 2025-06-30.
///
/// Other available API versions: 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_database_migrations_sql_vm_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMigrationsSqlVmResult> getDatabaseMigrationsSqlVm(
  GetDatabaseMigrationsSqlVmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getDatabaseMigrationsSqlVm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMigrationsSqlVmResult.fromMap(result);
}

/// The files resource is a nested, proxy-only resource representing a file stored under the project resource. This method retrieves information about a file.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_file_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileResult> getFile(
  GetFileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileResult.fromMap(result);
}

/// Retrieve the Database Migration Service
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_migration_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationServiceResult> getMigrationService(
  GetMigrationServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getMigrationService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationServiceResult.fromMap(result);
}

/// The project resource is a nested resource representing a stored migration project. The GET method retrieves information about a project.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The GET method retrieves information about a service instance.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// The service tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The GET method retrieves information about a service task.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_service_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceTaskResult> getServiceTask(
  GetServiceTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getServiceTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceTaskResult.fromMap(result);
}

/// Retrieve the Database Migration Service
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_sql_migration_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlMigrationServiceResult> getSqlMigrationService(
  GetSqlMigrationServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getSqlMigrationService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlMigrationServiceResult.fromMap(result);
}

/// The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The GET method retrieves information about a task.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_get_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskResult> getTask(
  GetTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskResult.fromMap(result);
}

/// Retrieve the List of Authentication Keys for Self Hosted Integration Runtime.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_list_sql_migration_service_auth_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSqlMigrationServiceAuthKeysResult> listSqlMigrationServiceAuthKeys(
  ListSqlMigrationServiceAuthKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:listSqlMigrationServiceAuthKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSqlMigrationServiceAuthKeysResult.fromMap(result);
}

/// Retrieve the registered Integration Runtime nodes and their monitoring data for a given Database Migration Service.
///
/// Uses Azure REST API version 2023-07-15-preview.
///
/// Other available API versions: 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_list_sql_migration_service_monitoring_data_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSqlMigrationServiceMonitoringDataResult>
listSqlMigrationServiceMonitoringData(
  ListSqlMigrationServiceMonitoringDataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datamigration:listSqlMigrationServiceMonitoringData',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSqlMigrationServiceMonitoringDataResult.fromMap(result);
}
