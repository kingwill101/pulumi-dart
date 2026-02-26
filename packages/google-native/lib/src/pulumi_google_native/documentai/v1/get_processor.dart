import 'package:pulumi/pulumi.dart';
import 'get_processor_args.dart';
import 'get_processor_result.dart';

/// Gets a processor detail.
Future<GetProcessorResult> getProcessor(
  GetProcessorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:documentai/v1:getProcessor',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProcessorResult.fromMap(result);
}
