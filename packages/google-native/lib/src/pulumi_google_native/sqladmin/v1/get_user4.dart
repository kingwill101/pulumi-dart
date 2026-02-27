import 'package:pulumi/pulumi.dart' hide Config;
import 'get_user_args4.dart';
import 'get_user_result4.dart';

/// Retrieves a resource containing information about a user.
Future<GetUserResult4> getUser4(
  GetUserArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult4.fromMap(result);
}
