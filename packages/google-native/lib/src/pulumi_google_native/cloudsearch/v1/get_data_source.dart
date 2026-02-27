import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_args.dart';
import 'get_data_source_result.dart';

/// Gets a datasource. **Note:** This API requires an admin account to execute.
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
