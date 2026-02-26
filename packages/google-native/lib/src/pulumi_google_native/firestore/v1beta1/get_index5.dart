import 'package:pulumi/pulumi.dart';
import 'get_index_args5.dart';
import 'get_index_result5.dart';

/// Gets an index.
Future<GetIndexResult5> getIndex5(
  GetIndexArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1beta1:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult5.fromMap(result);
}
