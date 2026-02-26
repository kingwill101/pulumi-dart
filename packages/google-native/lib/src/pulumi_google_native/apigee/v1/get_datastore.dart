import 'package:pulumi/pulumi.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';

/// Get a Datastore
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDatastore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}
