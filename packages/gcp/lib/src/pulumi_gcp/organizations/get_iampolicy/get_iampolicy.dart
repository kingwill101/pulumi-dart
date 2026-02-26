import 'package:pulumi/pulumi.dart';
import 'get_iampolicy_args.dart';
import 'get_iampolicy_result.dart';

/// Generates an IAM policy document that may be referenced by and applied to
/// other Google Cloud Platform IAM resources, such as the <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> resource.
///
/// **Note:** Please review the documentation of the resource that you will be using the datasource with. Some resources such as <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span> and others have limitations in their API methods which are noted on their respective page.
Future<GetIAMPolicyResult> getIAMPolicy(
  GetIAMPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIAMPolicy:getIAMPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIAMPolicyResult.fromMap(result);
}
