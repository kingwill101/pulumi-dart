import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_args.dart';
import 'get_organization_result.dart';

/// Get information about the organization that the users account belongs to.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Limit SNS Topic Access to an Organization
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}
