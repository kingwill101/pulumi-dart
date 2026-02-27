import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firehose_delivery_stream_args.dart';
import 'get_firehose_delivery_stream_result.dart';

/// Use this data source to get information about a Kinesis Firehose Delivery Stream for use in other resources.
///
/// For more details, see the [Amazon Kinesis Firehose Documentation](https://aws.amazon.com/documentation/firehose/).
Future<GetFirehoseDeliveryStreamResult> getFirehoseDeliveryStream(
  GetFirehoseDeliveryStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getFirehoseDeliveryStream:getFirehoseDeliveryStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirehoseDeliveryStreamResult.fromMap(result);
}
