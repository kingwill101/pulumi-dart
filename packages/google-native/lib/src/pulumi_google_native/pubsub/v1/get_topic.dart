import 'package:pulumi/pulumi.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';

/// Gets the configuration of a topic.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getTopic',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}
