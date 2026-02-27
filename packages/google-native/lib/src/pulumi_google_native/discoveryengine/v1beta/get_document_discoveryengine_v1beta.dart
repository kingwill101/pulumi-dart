import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_discoveryengine_v1beta_args.dart';
import 'get_document_discoveryengine_v1beta_result.dart';

/// Gets a Document.
Future<GetDocumentDiscoveryengineV1betaResult> getDocumentDiscoveryengineV1beta(
  GetDocumentDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDiscoveryengineV1betaResult.fromMap(result);
}
