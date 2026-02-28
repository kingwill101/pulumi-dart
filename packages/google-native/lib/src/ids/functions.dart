import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_args.dart';
import 'get_endpoint_iam_policy_args.dart';
import 'get_endpoint_iam_policy_result.dart';
import 'get_endpoint_result.dart';

/// Gets details of a single Endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_ids_v1_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ids/v1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_ids_v1_get_endpoint_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointIamPolicyResult> getEndpointIamPolicy(
  GetEndpointIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ids/v1:getEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointIamPolicyResult.fromMap(result);
}
