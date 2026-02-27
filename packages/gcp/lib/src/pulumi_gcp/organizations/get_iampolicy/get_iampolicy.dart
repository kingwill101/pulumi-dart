import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iampolicy_args.dart';
import 'get_iampolicy_result.dart';

/// Generates an IAM policy document that may be referenced by and applied to
/// other Google Cloud Platform IAM resources, such as the `gcp.projects.IAMPolicy` resource.
///
/// **Note:** Please review the documentation of the resource that you will be using the datasource with. Some resources such as `gcp.projects.IAMPolicy` and others have limitations in their API methods which are noted on their respective page.
Future<GetIAMPolicyResult> getIAMPolicy(
  GetIAMPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIAMPolicy:getIAMPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIAMPolicyResult.fromMap(result);
}
