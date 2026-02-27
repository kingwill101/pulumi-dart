import 'package:pulumi/pulumi.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';

/// Get information about a Google Cloud Pub/Sub Topic. For more information see
/// the [official documentation](https://cloud.google.com/pubsub/docs/)
/// and [API](https://cloud.google.com/pubsub/docs/apis).
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getTopic:getTopic',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}
