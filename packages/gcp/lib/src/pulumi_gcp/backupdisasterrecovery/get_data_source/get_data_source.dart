import 'package:pulumi/pulumi.dart';
import 'get_data_source_args.dart';
import 'get_data_source_result.dart';

/// A Backup and DR Data Source.
Future<GetDataSourceResult> getDataSource(
  GetDataSourceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSource:getDataSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataSourceResult.fromMap(result);
}
