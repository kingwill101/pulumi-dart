import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_policy_document_args.dart';
import 'get_lifecycle_policy_document_result.dart';

/// Generates an ECR lifecycle policy document in JSON format. Can be used with resources such as the `aws.ecr.LifecyclePolicy` resource.
///
/// > For more information about building AWS ECR lifecycle policy documents, see the [AWS ECR Lifecycle Policy Document Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
Future<GetLifecyclePolicyDocumentResult> getLifecyclePolicyDocument(
  GetLifecyclePolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getLifecyclePolicyDocument:getLifecyclePolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLifecyclePolicyDocumentResult.fromMap(result);
}
