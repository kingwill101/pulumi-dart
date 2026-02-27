import 'package:pulumi/pulumi.dart' hide Config;
import 'get_key_args2.dart';
import 'get_key_result2.dart';

/// Gets a ServiceAccountKey.
Future<GetKeyResult2> getKey2(
  GetKeyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyResult2.fromMap(result);
}
