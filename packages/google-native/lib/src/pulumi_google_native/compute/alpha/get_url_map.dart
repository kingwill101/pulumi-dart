import 'package:pulumi/pulumi.dart' hide Config;
import 'get_url_map_args.dart';
import 'get_url_map_result.dart';

/// Returns the specified UrlMap resource.
Future<GetUrlMapResult> getUrlMap(
  GetUrlMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getUrlMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUrlMapResult.fromMap(result);
}
