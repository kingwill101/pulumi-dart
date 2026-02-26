import 'package:pulumi/pulumi.dart';
import 'get_organization_args.dart';
import 'get_organization_result.dart';

/// Gets the profile for an Apigee organization. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganization',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}
