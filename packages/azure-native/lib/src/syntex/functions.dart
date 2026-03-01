import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_processor_args.dart';
import 'get_document_processor_result.dart';

/// Returns a document processor for a given name.
///
/// Uses Azure REST API version 2022-09-15-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_syntex_get_document_processor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentProcessorResult> getDocumentProcessor(
  GetDocumentProcessorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:syntex:getDocumentProcessor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentProcessorResult.fromMap(result);
}
