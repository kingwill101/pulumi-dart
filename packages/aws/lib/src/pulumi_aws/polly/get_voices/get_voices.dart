import 'package:pulumi/pulumi.dart';
import 'get_voices_args.dart';
import 'get_voices_result.dart';

/// Data source for managing an AWS Polly Voices.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Language Code
Future<GetVoicesResult> getVoices(
  GetVoicesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:polly/getVoices:getVoices',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVoicesResult.fromMap(result);
}
