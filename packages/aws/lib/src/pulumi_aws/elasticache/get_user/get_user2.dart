import 'package:pulumi/pulumi.dart';
import 'get_user_args2.dart';
import 'get_user_result2.dart';

/// Use this data source to get information about an ElastiCache User.
Future<GetUserResult2> getUser2(
  GetUserArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult2.fromMap(result);
}
