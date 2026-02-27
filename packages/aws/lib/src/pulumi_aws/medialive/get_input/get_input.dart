import 'package:pulumi/pulumi.dart';
import 'get_input_args.dart';
import 'get_input_result.dart';

/// Data source for managing an AWS Elemental MediaLive Input.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetInputResult> getInput(
  GetInputArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:medialive/getInput:getInput',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInputResult.fromMap(result);
}
