import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_queued_resource_args.dart';
import 'get_zone_queued_resource_result.dart';

/// Returns the specified QueuedResource resource.
Future<GetZoneQueuedResourceResult> getZoneQueuedResource(
  GetZoneQueuedResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getZoneQueuedResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneQueuedResourceResult.fromMap(result);
}
