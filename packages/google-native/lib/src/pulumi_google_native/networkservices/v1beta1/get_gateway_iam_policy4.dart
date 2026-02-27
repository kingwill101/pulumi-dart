import 'package:pulumi/pulumi.dart' hide Config;
import 'get_gateway_iam_policy_args4.dart';
import 'get_gateway_iam_policy_result4.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGatewayIamPolicyResult4> getGatewayIamPolicy4(
  GetGatewayIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult4.fromMap(result);
}
