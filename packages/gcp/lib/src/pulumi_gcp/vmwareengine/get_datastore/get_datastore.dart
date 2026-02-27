import 'package:pulumi/pulumi.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';

/// Use this data source to get details about a datastore resource.
///
/// To get more information about datastore, see:
/// * [API documentation](https://docs.cloud.google.com/vmware-engine/docs/vmware-ecosystem/concepts-nfs-datastores-overview)
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getDatastore:getDatastore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}
