import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_firestore_v1beta2_args.dart';
import 'get_index_firestore_v1beta2_result.dart';

/// Gets a composite index.
Future<GetIndexFirestoreV1beta2Result> getIndexFirestoreV1beta2(
  GetIndexFirestoreV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1beta2:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexFirestoreV1beta2Result.fromMap(result);
}
