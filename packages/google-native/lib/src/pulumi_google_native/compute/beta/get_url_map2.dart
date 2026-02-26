import 'package:pulumi/pulumi.dart';
import 'get_url_map_args2.dart';
import 'get_url_map_result2.dart';

/// Returns the specified UrlMap resource.
Future<GetUrlMapResult2> getUrlMap2(
  GetUrlMapArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getUrlMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUrlMapResult2.fromMap(result);
}
