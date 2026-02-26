import 'package:pulumi/pulumi.dart';
import 'get_index_args6.dart';
import 'get_index_result6.dart';

/// Gets a composite index.
Future<GetIndexResult6> getIndex6(
  GetIndexArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1beta2:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult6.fromMap(result);
}
