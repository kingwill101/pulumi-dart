import 'package:pulumi/pulumi.dart';
import 'get_received_license_args.dart';
import 'get_received_license_result.dart';

/// This resource can be used to get data on a received license using an ARN. This can be helpful for pulling in data on a license from the AWS marketplace and sharing that license with another account.
///
/// ## Example Usage
///
/// The following shows getting the received license data using and ARN.
Future<GetReceivedLicenseResult> getReceivedLicense(
  GetReceivedLicenseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:licensemanager/getReceivedLicense:getReceivedLicense',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReceivedLicenseResult.fromMap(result);
}
