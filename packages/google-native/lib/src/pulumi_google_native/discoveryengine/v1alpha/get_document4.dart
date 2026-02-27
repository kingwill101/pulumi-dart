import 'package:pulumi/pulumi.dart' hide Config;
import 'get_document_args4.dart';
import 'get_document_result4.dart';

/// Gets a Document.
Future<GetDocumentResult4> getDocument4(
  GetDocumentArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult4.fromMap(result);
}
