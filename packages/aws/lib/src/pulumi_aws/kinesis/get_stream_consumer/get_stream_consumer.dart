import 'package:pulumi/pulumi.dart';
import 'get_stream_consumer_args.dart';
import 'get_stream_consumer_result.dart';

/// Provides details about a Kinesis Stream Consumer.
///
/// For more details, see the [Amazon Kinesis Stream Consumer Documentation](https://docs.aws.amazon.com/streams/latest/dev/enhanced-consumers.html).
Future<GetStreamConsumerResult> getStreamConsumer(
  GetStreamConsumerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getStreamConsumer:getStreamConsumer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStreamConsumerResult.fromMap(result);
}
