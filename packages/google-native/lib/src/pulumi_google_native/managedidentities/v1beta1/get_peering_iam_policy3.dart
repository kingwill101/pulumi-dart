import 'package:pulumi/pulumi.dart' hide Config;
import 'get_peering_iam_policy_args3.dart';
import 'get_peering_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPeeringIamPolicyResult3> getPeeringIamPolicy3(
  GetPeeringIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getPeeringIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringIamPolicyResult3.fromMap(result);
}
