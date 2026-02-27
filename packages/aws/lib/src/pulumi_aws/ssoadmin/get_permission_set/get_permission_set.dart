import 'package:pulumi/pulumi.dart';
import 'get_permission_set_args.dart';
import 'get_permission_set_result.dart';

/// Use this data source to get a Single Sign-On (SSO) Permission Set.
Future<GetPermissionSetResult> getPermissionSet(
  GetPermissionSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPermissionSet:getPermissionSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPermissionSetResult.fromMap(result);
}
