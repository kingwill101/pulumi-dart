import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_args.dart';
import 'get_organization_result.dart';

/// Get information about a Google Cloud Organization. Note that you must have the `roles/resourcemanager.organizationViewer` role (or equivalent permissions) at the organization level to use this datasource.
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}
