import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_iam_args.dart';
import 'get_user_iam_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM user. By using this data source, you can reference IAM user
/// properties without having to hard code ARNs or unique IDs as input.
Future<GetUserIamResult> getUserIam(
  GetUserIamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserIamResult.fromMap(result);
}
