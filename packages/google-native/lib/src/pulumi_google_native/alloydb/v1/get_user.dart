import 'package:pulumi/pulumi.dart' hide Config;
import 'get_user_args.dart';
import 'get_user_result.dart';

/// Gets details of a single User.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
