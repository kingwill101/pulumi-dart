import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_url_map_args.dart';
import 'get_url_map_result.dart';

/// Returns the specified UrlMap resource.
Future<GetUrlMapResult> getUrlMap(
  GetUrlMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlMapResult.fromMap(result);
}
