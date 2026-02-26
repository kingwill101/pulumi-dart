import 'package:pulumi/pulumi.dart';
import 'get_processor_args2.dart';
import 'get_processor_result2.dart';

/// Gets a processor detail.
Future<GetProcessorResult2> getProcessor2(
  GetProcessorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:documentai/v1beta3:getProcessor',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProcessorResult2.fromMap(result);
}
