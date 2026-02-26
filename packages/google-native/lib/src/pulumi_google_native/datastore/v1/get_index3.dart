import 'package:pulumi/pulumi.dart';
import 'get_index_args3.dart';
import 'get_index_result3.dart';

/// Gets an index.
Future<GetIndexResult3> getIndex3(
  GetIndexArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastore/v1:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult3.fromMap(result);
}
