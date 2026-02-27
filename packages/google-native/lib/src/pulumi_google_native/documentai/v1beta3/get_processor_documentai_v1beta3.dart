import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_processor_documentai_v1beta3_args.dart';
import 'get_processor_documentai_v1beta3_result.dart';

/// Gets a processor detail.
Future<GetProcessorDocumentaiV1beta3Result> getProcessorDocumentaiV1beta3(
  GetProcessorDocumentaiV1beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:documentai/v1beta3:getProcessor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProcessorDocumentaiV1beta3Result.fromMap(result);
}
