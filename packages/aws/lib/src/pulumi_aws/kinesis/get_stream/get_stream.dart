import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_args.dart';
import 'get_stream_result.dart';

/// Use this data source to get information about a Kinesis Stream for use in other
/// resources.
///
/// For more details, see the [Amazon Kinesis Documentation](https://aws.amazon.com/documentation/kinesis/).
Future<GetStreamResult> getStream(
  GetStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getStream:getStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamResult.fromMap(result);
}
