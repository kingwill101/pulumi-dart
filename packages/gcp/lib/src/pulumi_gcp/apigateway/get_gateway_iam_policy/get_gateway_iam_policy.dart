import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_iam_policy_args.dart';
import 'get_gateway_iam_policy_result.dart';

Future<GetGatewayIamPolicyResult> getGatewayIamPolicy(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getGatewayIamPolicy:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult.fromMap(result);
}
