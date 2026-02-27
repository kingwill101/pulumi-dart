import 'package:pulumi/pulumi.dart';
import 'get_received_licenses_args.dart';
import 'get_received_licenses_result.dart';

/// This resource can be used to get a set of license ARNs matching a filter.
///
/// ## Example Usage
///
/// The following shows getting all license ARNs issued from the AWS marketplace. Providing no filter, would provide all license ARNs for the entire account.
Future<GetReceivedLicensesResult> getReceivedLicenses(
  GetReceivedLicensesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:licensemanager/getReceivedLicenses:getReceivedLicenses',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReceivedLicensesResult.fromMap(result);
}
