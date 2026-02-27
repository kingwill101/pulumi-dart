import 'package:pulumi/pulumi.dart';
import 'get_map_args.dart';
import 'get_map_result.dart';

/// Retrieve information about a Location Service Map.
Future<GetMapResult> getMap(
  GetMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getMap:getMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMapResult.fromMap(result);
}
