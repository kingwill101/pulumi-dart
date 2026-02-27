import 'package:pulumi/pulumi.dart' hide Config;
import 'get_stream_args2.dart';
import 'get_stream_result2.dart';

/// Use this method to get details about a stream.
Future<GetStreamResult2> getStream2(
  GetStreamArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getStream',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStreamResult2.fromMap(result);
}
