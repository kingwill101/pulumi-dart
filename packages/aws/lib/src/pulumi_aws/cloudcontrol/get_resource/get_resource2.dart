import 'package:pulumi/pulumi.dart';
import 'get_resource_args2.dart';
import 'get_resource_result2.dart';

/// Provides details for a Cloud Control API Resource. The reading of these resources is proxied through Cloud Control API handlers to the backend service.
Future<GetResourceResult2> getResource2(
  GetResourceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudcontrol/getResource:getResource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceResult2.fromMap(result);
}
