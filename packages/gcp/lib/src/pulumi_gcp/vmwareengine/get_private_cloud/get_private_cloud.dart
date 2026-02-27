import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';

/// Use this data source to get details about a private cloud resource.
///
/// To get more information about private cloud, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds)
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getPrivateCloud:getPrivateCloud',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}
