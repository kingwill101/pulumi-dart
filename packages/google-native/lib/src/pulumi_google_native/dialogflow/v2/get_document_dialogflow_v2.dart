import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_dialogflow_v2_args.dart';
import 'get_document_dialogflow_v2_result.dart';

/// Retrieves the specified document.
Future<GetDocumentDialogflowV2Result> getDocumentDialogflowV2(
  GetDocumentDialogflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDialogflowV2Result.fromMap(result);
}
