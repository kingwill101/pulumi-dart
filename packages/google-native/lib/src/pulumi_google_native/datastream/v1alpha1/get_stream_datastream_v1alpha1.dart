import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_datastream_v1alpha1_args.dart';
import 'get_stream_datastream_v1alpha1_result.dart';

/// Use this method to get details about a stream.
Future<GetStreamDatastreamV1alpha1Result> getStreamDatastreamV1alpha1(
  GetStreamDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamDatastreamV1alpha1Result.fromMap(result);
}
