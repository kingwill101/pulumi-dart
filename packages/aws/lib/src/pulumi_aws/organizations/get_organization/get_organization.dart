import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}
