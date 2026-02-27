import 'package:pulumi/pulumi.dart';
import 'get_stream_key_args.dart';
import 'get_stream_key_result.dart';

/// Data source for managing an AWS IVS (Interactive Video) Stream Key.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetStreamKeyResult> getStreamKey(
  GetStreamKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ivs/getStreamKey:getStreamKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStreamKeyResult.fromMap(result);
}
