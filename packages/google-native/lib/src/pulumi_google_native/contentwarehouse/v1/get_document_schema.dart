import 'package:pulumi/pulumi.dart' hide Config;
import 'get_document_schema_args.dart';
import 'get_document_schema_result.dart';

/// Gets a document schema. Returns NOT_FOUND if the document schema does not exist.
Future<GetDocumentSchemaResult> getDocumentSchema(
  GetDocumentSchemaArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getDocumentSchema',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDocumentSchemaResult.fromMap(result);
}
