import 'package:pulumi/pulumi.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';

/// Use this data source to get the ARN of a topic in AWS Simple Notification
/// Service (SNS). By using this data source, you can reference SNS topics
/// without having to hard code the ARNs as input.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sns/getTopic:getTopic',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}
