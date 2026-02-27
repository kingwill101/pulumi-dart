import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queued_resource_args.dart';
import 'get_queued_resource_result.dart';

/// Gets details of a queued resource.
Future<GetQueuedResourceResult> getQueuedResource(
  GetQueuedResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getQueuedResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueuedResourceResult.fromMap(result);
}
