import 'package:pulumi/pulumi.dart' hide Config;
import 'get_topic_args2.dart';
import 'get_topic_result2.dart';

/// Gets the configuration of a topic. Since the topic only has the name attribute, this method is only useful to check the existence of a topic. If other attributes are added in the future, they will be returned here.
Future<GetTopicResult2> getTopic2(
  GetTopicArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta1a:getTopic',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicResult2.fromMap(result);
}
