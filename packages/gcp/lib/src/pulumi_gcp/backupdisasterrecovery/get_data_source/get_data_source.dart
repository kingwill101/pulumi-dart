import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_args.dart';
import 'get_data_source_result.dart';

/// A Backup and DR Data Source.
Future<GetDataSourceResult> getDataSource(
  GetDataSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSource:getDataSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceResult.fromMap(result);
}
