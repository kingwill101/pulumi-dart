import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_policy_args.dart';
import 'get_organization_policy_result.dart';

/// Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.
Future<GetOrganizationPolicyResult> getOrganizationPolicy(
  GetOrganizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getOrganizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult.fromMap(result);
}
