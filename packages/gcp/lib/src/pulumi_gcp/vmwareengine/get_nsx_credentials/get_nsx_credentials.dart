import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nsx_credentials_args.dart';
import 'get_nsx_credentials_result.dart';

/// Use this data source to get NSX credentials for a Private Cloud.
///
/// To get more information about private cloud NSX credentials, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds/showNsxCredentials)
Future<GetNsxCredentialsResult> getNsxCredentials(
  GetNsxCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNsxCredentials:getNsxCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNsxCredentialsResult.fromMap(result);
}
