import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_iam_policy_args.dart';
import 'get_document_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDocumentIamPolicyResult> getDocumentIamPolicy(
  GetDocumentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDocumentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentIamPolicyResult.fromMap(result);
}
