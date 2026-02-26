import 'package:pulumi/pulumi.dart';
import 'get_data_source_references_args.dart';
import 'get_data_source_references_result.dart';

/// A list of Backup and DR data source references.
Future<GetDataSourceReferencesResult> getDataSourceReferences(
  GetDataSourceReferencesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSourceReferences:getDataSourceReferences',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataSourceReferencesResult.fromMap(result);
}
