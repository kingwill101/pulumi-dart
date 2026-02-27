import 'package:pulumi/pulumi.dart';
import 'get_metastore_service_args.dart';
import 'get_metastore_service_result.dart';

/// Get a Dataproc Metastore service from Google Cloud by its id and location.
Future<GetMetastoreServiceResult> getMetastoreService(
  GetMetastoreServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreService:getMetastoreService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetastoreServiceResult.fromMap(result);
}
