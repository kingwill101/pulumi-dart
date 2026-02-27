import 'package:pulumi/pulumi.dart';
import 'get_routers_args.dart';
import 'get_routers_result.dart';

/// Get a list of routers. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/list) documentation.
Future<GetRoutersResult> getRouters(
  GetRoutersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouters:getRouters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRoutersResult.fromMap(result);
}
