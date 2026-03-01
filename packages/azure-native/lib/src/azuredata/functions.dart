import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sql_server_args.dart';
import 'get_sql_server_registration_args.dart';
import 'get_sql_server_registration_result.dart';
import 'get_sql_server_result.dart';

/// Gets a SQL Server.
///
/// Uses Azure REST API version 2019-07-24-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredata_get_sql_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerResult> getSqlServer(
  GetSqlServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredata:getSqlServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerResult.fromMap(result);
}

/// Gets a SQL Server registration.
///
/// Uses Azure REST API version 2019-07-24-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredata_get_sql_server_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlServerRegistrationResult> getSqlServerRegistration(
  GetSqlServerRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredata:getSqlServerRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlServerRegistrationResult.fromMap(result);
}
