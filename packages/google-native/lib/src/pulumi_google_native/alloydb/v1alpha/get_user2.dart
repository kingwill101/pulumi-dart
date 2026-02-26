import 'package:pulumi/pulumi.dart';
import 'get_user_args2.dart';
import 'get_user_result2.dart';

/// Gets details of a single User.
Future<GetUserResult2> getUser2(
  GetUserArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult2.fromMap(result);
}
