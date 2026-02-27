import 'package:pulumi/pulumi.dart';
import 'get_role_args.dart';
import 'get_role_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM role. By using this data source, you can reference IAM role
/// properties without having to hard code ARNs as input.
Future<GetRoleResult> getRole(
  GetRoleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRole:getRole',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRoleResult.fromMap(result);
}
