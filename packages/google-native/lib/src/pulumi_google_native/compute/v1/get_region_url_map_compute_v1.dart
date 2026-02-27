import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_url_map_compute_v1_args.dart';
import 'get_region_url_map_compute_v1_result.dart';

/// Returns the specified UrlMap resource.
Future<GetRegionUrlMapComputeV1Result> getRegionUrlMapComputeV1(
  GetRegionUrlMapComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapComputeV1Result.fromMap(result);
}
