import 'package:pulumi/pulumi.dart';
import 'get_user_args3.dart';
import 'get_user_result3.dart';

/// This data source can be used to fetch information about a specific
/// IAM user. By using this data source, you can reference IAM user
/// properties without having to hard code ARNs or unique IDs as input.
Future<GetUserResult3> getUser3(
  GetUserArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult3.fromMap(result);
}
