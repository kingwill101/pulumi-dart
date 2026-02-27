import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_permission_sets_args.dart';
import 'get_permission_sets_result.dart';

/// Data source returning the ARN of all AWS SSO Admin Permission Sets.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPermissionSetsResult> getPermissionSets(
  GetPermissionSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPermissionSets:getPermissionSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPermissionSetsResult.fromMap(result);
}
