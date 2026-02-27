import 'package:pulumi/pulumi.dart';
import 'get_testable_permissions_args.dart';
import 'get_testable_permissions_result.dart';

/// Retrieve a list of testable permissions for a resource. Testable permissions mean the permissions that user can add or remove in a role at a given resource. The resource can be referenced either via the full resource name or via a URI.
///
/// ## Example Usage
///
/// Retrieve all the supported permissions able to be set on `my-project` that are in either GA or BETA. This is useful for dynamically constructing custom roles.
Future<GetTestablePermissionsResult> getTestablePermissions(
  GetTestablePermissionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getTestablePermissions:getTestablePermissions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTestablePermissionsResult.fromMap(result);
}
