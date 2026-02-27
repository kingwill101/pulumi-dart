import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_discoveryengine_v1alpha_args.dart';
import 'get_document_discoveryengine_v1alpha_result.dart';

/// Gets a Document.
Future<GetDocumentDiscoveryengineV1alphaResult>
    getDocumentDiscoveryengineV1alpha(
  GetDocumentDiscoveryengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDiscoveryengineV1alphaResult.fromMap(result);
}
