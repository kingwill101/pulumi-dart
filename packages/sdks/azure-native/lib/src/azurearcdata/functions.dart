import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_active_directory_connector_args.dart';
import 'get_active_directory_connector_result.dart';
import 'get_data_controller_args.dart';
import 'get_data_controller_result.dart';
import 'get_failover_group_args.dart';
import 'get_failover_group_result.dart';
import 'get_postgres_instance_args.dart';
import 'get_postgres_instance_result.dart';
import 'get_sql_managed_instance_args.dart';
import 'get_sql_managed_instance_result.dart';
import 'get_sql_server_availability_group_args.dart';
import 'get_sql_server_availability_group_detail_view_args.dart';
import 'get_sql_server_availability_group_detail_view_result.dart';
import 'get_sql_server_availability_group_result.dart';
import 'get_sql_server_database_args.dart';
import 'get_sql_server_database_result.dart';
import 'get_sql_server_esu_license_args.dart';
import 'get_sql_server_esu_license_result.dart';
import 'get_sql_server_instance_args.dart';
import 'get_sql_server_instance_jobs_status_args.dart';
import 'get_sql_server_instance_jobs_status_result.dart';
import 'get_sql_server_instance_result.dart';
import 'get_sql_server_instance_telemetry_args.dart';
import 'get_sql_server_instance_telemetry_result.dart';
import 'get_sql_server_license_args.dart';
import 'get_sql_server_license_result.dart';

/// Retrieves an Active Directory connector resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_active_directory_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActiveDirectoryConnectorResult> getActiveDirectoryConnector(
  GetActiveDirectoryConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getActiveDirectoryConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveDirectoryConnectorResult.fromMap(result);
}

/// Retrieves a dataController resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_data_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataControllerResult> getDataController(
  GetDataControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getDataController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataControllerResult.fromMap(result);
}

/// Retrieves a failover group resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_failover_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFailoverGroupResult> getFailoverGroup(
  GetFailoverGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getFailoverGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFailoverGroupResult.fromMap(result);
}

/// Retrieves a postgres Instance resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_postgres_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPostgresInstanceResult> getPostgresInstance(
  GetPostgresInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getPostgresInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPostgresInstanceResult.fromMap(result);
}

/// Retrieves a SQL Managed Instance resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_managed_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlManagedInstanceResult> getSqlManagedInstance(
  GetSqlManagedInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlManagedInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlManagedInstanceResult.fromMap(result);
}

/// Retrieves an Arc Sql Server availability group.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_availability_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerAvailabilityGroupResult> getSqlServerAvailabilityGroup(
  GetSqlServerAvailabilityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerAvailabilityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerAvailabilityGroupResult.fromMap(result);
}

/// Retrieves detailed properties of the Availability Group.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_availability_group_detail_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerAvailabilityGroupDetailViewResult>
getSqlServerAvailabilityGroupDetailView(
  GetSqlServerAvailabilityGroupDetailViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerAvailabilityGroupDetailView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerAvailabilityGroupDetailViewResult.fromMap(result);
}

/// Retrieves an Arc Sql Server database.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerDatabaseResult> getSqlServerDatabase(
  GetSqlServerDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerDatabaseResult.fromMap(result);
}

/// Retrieves a SQL Server ESU license resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_esu_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerEsuLicenseResult> getSqlServerEsuLicense(
  GetSqlServerEsuLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerEsuLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerEsuLicenseResult.fromMap(result);
}

/// Retrieves a SQL Server Instance resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerInstanceResult> getSqlServerInstance(
  GetSqlServerInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerInstanceResult.fromMap(result);
}

/// Gets jobs status details for sql arc resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_instance_jobs_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerInstanceJobsStatusResult> getSqlServerInstanceJobsStatus(
  GetSqlServerInstanceJobsStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerInstanceJobsStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerInstanceJobsStatusResult.fromMap(result);
}

/// Retrieves SQL Server instance telemetry
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_instance_telemetry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerInstanceTelemetryResult> getSqlServerInstanceTelemetry(
  GetSqlServerInstanceTelemetryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerInstanceTelemetry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerInstanceTelemetryResult.fromMap(result);
}

/// Retrieves a SQL Server license resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurearcdata_get_sql_server_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerLicenseResult> getSqlServerLicense(
  GetSqlServerLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurearcdata:getSqlServerLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerLicenseResult.fromMap(result);
}
