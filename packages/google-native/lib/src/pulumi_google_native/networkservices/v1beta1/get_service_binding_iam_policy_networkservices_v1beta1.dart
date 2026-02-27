import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_binding_iam_policy_networkservices_v1beta1_args.dart';
import 'get_service_binding_iam_policy_networkservices_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBindingIamPolicyNetworkservicesV1beta1Result>
    getServiceBindingIamPolicyNetworkservicesV1beta1(
  GetServiceBindingIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBindingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}
