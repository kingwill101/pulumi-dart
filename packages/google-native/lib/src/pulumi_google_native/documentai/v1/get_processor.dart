import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_processor_args.dart';
import 'get_processor_result.dart';

/// Gets a processor detail.
Future<GetProcessorResult> getProcessor(
  GetProcessorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:documentai/v1:getProcessor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProcessorResult.fromMap(result);
}
