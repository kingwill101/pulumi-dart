import 'package:pulumi/pulumi.dart';
import 'get_role_args.dart';
import 'get_role_result.dart';

/// Gets the definition of a Role.
Future<GetRoleResult> getRole(
  GetRoleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getRole',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRoleResult.fromMap(result);
}
