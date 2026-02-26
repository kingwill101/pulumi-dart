import 'package:pulumi/pulumi.dart';
import 'get_index_args2.dart';
import 'get_index_result2.dart';

/// Gets an Index.
Future<GetIndexResult2> getIndex2(
  GetIndexArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult2.fromMap(result);
}
