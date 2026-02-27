import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_firestore_v1_args.dart';
import 'get_index_firestore_v1_result.dart';

/// Gets a composite index.
Future<GetIndexFirestoreV1Result> getIndexFirestoreV1(
  GetIndexFirestoreV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexFirestoreV1Result.fromMap(result);
}
