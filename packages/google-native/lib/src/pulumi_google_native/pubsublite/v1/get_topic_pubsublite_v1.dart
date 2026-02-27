import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_pubsublite_v1_args.dart';
import 'get_topic_pubsublite_v1_result.dart';

/// Returns the topic configuration.
Future<GetTopicPubsubliteV1Result> getTopicPubsubliteV1(
  GetTopicPubsubliteV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicPubsubliteV1Result.fromMap(result);
}
