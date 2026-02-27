import 'package:pulumi/pulumi.dart' hide Config;
import 'get_topic_args3.dart';
import 'get_topic_result3.dart';

/// Gets the configuration of a topic.
Future<GetTopicResult3> getTopic3(
  GetTopicArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getTopic',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicResult3.fromMap(result);
}
