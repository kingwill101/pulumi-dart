import 'package:pulumi/pulumi.dart' hide Config;
import 'get_user_args5.dart';
import 'get_user_result5.dart';

/// Retrieves a resource containing information about a user.
Future<GetUserResult5> getUser5(
  GetUserArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult5.fromMap(result);
}
