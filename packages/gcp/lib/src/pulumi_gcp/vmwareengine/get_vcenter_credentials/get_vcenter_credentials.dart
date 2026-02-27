import 'package:pulumi/pulumi.dart';
import 'get_vcenter_credentials_args.dart';
import 'get_vcenter_credentials_result.dart';

/// Use this data source to get Vcenter credentials for a Private Cloud.
///
/// To get more information about private cloud Vcenter credentials, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds/showVcenterCredentials)
Future<GetVcenterCredentialsResult> getVcenterCredentials(
  GetVcenterCredentialsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getVcenterCredentials:getVcenterCredentials',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVcenterCredentialsResult.fromMap(result);
}
