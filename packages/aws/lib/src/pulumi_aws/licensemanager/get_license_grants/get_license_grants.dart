import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_grants_args.dart';
import 'get_license_grants_result.dart';

/// This resource can be used to get a set of license grant ARNs matching a filter.
///
/// ## Example Usage
///
/// The following shows getting all license grant ARNs granted to your account.
Future<GetLicenseGrantsResult> getLicenseGrants(
  GetLicenseGrantsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:licensemanager/getLicenseGrants:getLicenseGrants',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseGrantsResult.fromMap(result);
}
