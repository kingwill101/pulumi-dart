import 'package:pulumi/pulumi.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';

/// Provides access to available Google Compute regions for a given project.
/// See more about [regions and zones](https://cloud.google.com/compute/docs/regions-zones/) in the upstream docs.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegions:getRegions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}
