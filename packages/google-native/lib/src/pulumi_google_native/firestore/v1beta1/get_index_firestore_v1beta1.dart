import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_firestore_v1beta1_args.dart';
import 'get_index_firestore_v1beta1_result.dart';

/// Gets an index.
Future<GetIndexFirestoreV1beta1Result> getIndexFirestoreV1beta1(
  GetIndexFirestoreV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1beta1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexFirestoreV1beta1Result.fromMap(result);
}
