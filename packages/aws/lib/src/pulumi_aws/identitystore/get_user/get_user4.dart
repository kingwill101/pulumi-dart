import 'package:pulumi/pulumi.dart';
import 'get_user_args4.dart';
import 'get_user_result4.dart';

/// Use this data source to get an Identity Store User.
Future<GetUserResult4> getUser4(
  GetUserArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult4.fromMap(result);
}
