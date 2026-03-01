import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_my_sqlserver_args.dart';
import 'get_my_sqlserver_result.dart';
import 'get_my_sqlsite_args.dart';
import 'get_my_sqlsite_result.dart';

/// Gets the MySQLServers resource.
///
/// Uses Azure REST API version 2024-09-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_mysqldiscovery_get_my_sqlserver_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMySQLServerResult> getMySQLServer(
  GetMySQLServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mysqldiscovery:getMySQLServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMySQLServerResult.fromMap(result);
}

/// Gets the MySQLSites resource.
///
/// Uses Azure REST API version 2024-09-30-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_mysqldiscovery_get_my_sqlsite_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMySQLSiteResult> getMySQLSite(
  GetMySQLSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mysqldiscovery:getMySQLSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMySQLSiteResult.fromMap(result);
}
