import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_pubsub_v1_args.dart';
import 'get_snapshot_pubsub_v1_result.dart';

/// Gets the configuration details of a snapshot. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
Future<GetSnapshotPubsubV1Result> getSnapshotPubsubV1(
  GetSnapshotPubsubV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotPubsubV1Result.fromMap(result);
}
