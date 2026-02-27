import 'package:pulumi/pulumi.dart';
import 'get_user_args5.dart';
import 'get_user_result5.dart';

/// Provides information about a MemoryDB User.
Future<GetUserResult5> getUser5(
  GetUserArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult5.fromMap(result);
}
