import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_reference_args.dart';
import 'get_data_source_reference_result.dart';

/// Get information about a specific Backup and DR data source reference.
Future<GetDataSourceReferenceResult> getDataSourceReference(
  GetDataSourceReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSourceReference:getDataSourceReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceReferenceResult.fromMap(result);
}
