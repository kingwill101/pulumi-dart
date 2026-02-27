import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_pubsub_v1beta1a_args.dart';
import 'get_topic_pubsub_v1beta1a_result.dart';

/// Gets the configuration of a topic. Since the topic only has the name attribute, this method is only useful to check the existence of a topic. If other attributes are added in the future, they will be returned here.
Future<GetTopicPubsubV1beta1aResult> getTopicPubsubV1beta1a(
  GetTopicPubsubV1beta1aArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta1a:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicPubsubV1beta1aResult.fromMap(result);
}
