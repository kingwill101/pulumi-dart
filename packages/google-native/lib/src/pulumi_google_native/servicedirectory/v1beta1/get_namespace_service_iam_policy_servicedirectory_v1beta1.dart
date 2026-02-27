import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_service_iam_policy_servicedirectory_v1beta1_args.dart';
import 'get_namespace_service_iam_policy_servicedirectory_v1beta1_result.dart';

/// Gets the IAM Policy for a resource
Future<GetNamespaceServiceIamPolicyServicedirectoryV1beta1Result>
    getNamespaceServiceIamPolicyServicedirectoryV1beta1(
  GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServiceIamPolicyServicedirectoryV1beta1Result.fromMap(
      result);
}
