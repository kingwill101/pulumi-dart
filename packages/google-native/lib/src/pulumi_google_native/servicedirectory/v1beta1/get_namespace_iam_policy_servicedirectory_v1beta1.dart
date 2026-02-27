import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_iam_policy_servicedirectory_v1beta1_args.dart';
import 'get_namespace_iam_policy_servicedirectory_v1beta1_result.dart';

/// Gets the IAM Policy for a resource
Future<GetNamespaceIamPolicyServicedirectoryV1beta1Result>
    getNamespaceIamPolicyServicedirectoryV1beta1(
  GetNamespaceIamPolicyServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyServicedirectoryV1beta1Result.fromMap(result);
}
