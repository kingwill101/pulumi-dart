import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_role_args.dart';
import 'get_organization_role_result.dart';

/// Gets the definition of a Role.
Future<GetOrganizationRoleResult> getOrganizationRole(
  GetOrganizationRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getOrganizationRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationRoleResult.fromMap(result);
}
