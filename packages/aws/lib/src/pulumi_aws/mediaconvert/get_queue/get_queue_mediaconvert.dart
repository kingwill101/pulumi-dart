import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_mediaconvert_args.dart';
import 'get_queue_mediaconvert_result.dart';

/// Retrieve information about a AWS Elemental MediaConvert Queue.
Future<GetQueueMediaconvertResult> getQueueMediaconvert(
  GetQueueMediaconvertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mediaconvert/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueMediaconvertResult.fromMap(result);
}
