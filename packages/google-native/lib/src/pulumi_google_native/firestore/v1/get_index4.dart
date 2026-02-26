import 'package:pulumi/pulumi.dart';
import 'get_index_args4.dart';
import 'get_index_result4.dart';

/// Gets a composite index.
Future<GetIndexResult4> getIndex4(
  GetIndexArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult4.fromMap(result);
}
