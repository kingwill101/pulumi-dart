import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_pubsub_v1beta2_args.dart';
import 'get_topic_pubsub_v1beta2_result.dart';

/// Gets the configuration of a topic.
Future<GetTopicPubsubV1beta2Result> getTopicPubsubV1beta2(
  GetTopicPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicPubsubV1beta2Result.fromMap(result);
}
