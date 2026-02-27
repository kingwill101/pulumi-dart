import 'package:pulumi/pulumi.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// Provides details about a specific Amazon Connect User.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `user_id`
Future<GetUserResult> getUser(
  GetUserArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
