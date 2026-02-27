import 'package:pulumi/pulumi.dart' hide Config;
import 'get_topic_args4.dart';
import 'get_topic_result4.dart';

/// Returns the topic configuration.
Future<GetTopicResult4> getTopic4(
  GetTopicArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getTopic',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicResult4.fromMap(result);
}
