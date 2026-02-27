import 'package:pulumi/pulumi.dart' hide Config;
import 'get_url_map_args3.dart';
import 'get_url_map_result3.dart';

/// Returns the specified UrlMap resource.
Future<GetUrlMapResult3> getUrlMap3(
  GetUrlMapArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getUrlMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUrlMapResult3.fromMap(result);
}
