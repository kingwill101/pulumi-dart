import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_datastore_v1_args.dart';
import 'get_index_datastore_v1_result.dart';

/// Gets an index.
Future<GetIndexDatastoreV1Result> getIndexDatastoreV1(
  GetIndexDatastoreV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastore/v1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexDatastoreV1Result.fromMap(result);
}
