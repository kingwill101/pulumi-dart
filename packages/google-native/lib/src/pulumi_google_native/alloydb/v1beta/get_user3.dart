import 'package:pulumi/pulumi.dart' hide Config;
import 'get_user_args3.dart';
import 'get_user_result3.dart';

/// Gets details of a single User.
Future<GetUserResult3> getUser3(
  GetUserArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult3.fromMap(result);
}
