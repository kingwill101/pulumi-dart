import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_args.dart';
import 'get_data_source_result.dart';
import 'get_search_application_args.dart';
import 'get_search_application_result.dart';

/// Gets a datasource. **Note:** This API requires an admin account to execute.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsearch_v1_get_data_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSourceResult> getDataSource(
  GetDataSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudsearch/v1:getDataSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceResult.fromMap(result);
}

/// Gets the specified search application. **Note:** This API requires an admin account to execute.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsearch_v1_get_search_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSearchApplicationResult> getSearchApplication(
  GetSearchApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudsearch/v1:getSearchApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSearchApplicationResult.fromMap(result);
}
