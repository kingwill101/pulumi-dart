import 'package:pulumi/pulumi.dart';
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';

/// Use this data source to get details about a private cloud resource.
///
/// To get more information about private cloud, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds)
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getPrivateCloud:getPrivateCloud',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}
