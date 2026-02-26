import 'package:pulumi/pulumi.dart';
import 'get_data_attribute_binding_iam_policy_args.dart';
import 'get_data_attribute_binding_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDataAttributeBindingIamPolicyResult> getDataAttributeBindingIamPolicy(
  GetDataAttributeBindingIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBindingIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataAttributeBindingIamPolicyResult.fromMap(result);
}
