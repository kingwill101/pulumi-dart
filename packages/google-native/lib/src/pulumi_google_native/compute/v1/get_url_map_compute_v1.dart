import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_url_map_compute_v1_args.dart';
import 'get_url_map_compute_v1_result.dart';

/// Returns the specified UrlMap resource.
Future<GetUrlMapComputeV1Result> getUrlMapComputeV1(
  GetUrlMapComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlMapComputeV1Result.fromMap(result);
}
