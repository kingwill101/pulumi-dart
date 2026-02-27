import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_url_map_compute_beta_args.dart';
import 'get_region_url_map_compute_beta_result.dart';

/// Returns the specified UrlMap resource.
Future<GetRegionUrlMapComputeBetaResult> getRegionUrlMapComputeBeta(
  GetRegionUrlMapComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapComputeBetaResult.fromMap(result);
}
