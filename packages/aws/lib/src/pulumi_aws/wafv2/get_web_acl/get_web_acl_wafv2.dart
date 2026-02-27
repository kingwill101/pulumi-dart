import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_acl_wafv2_args.dart';
import 'get_web_acl_wafv2_result.dart';

/// Retrieves the summary of a WAFv2 Web ACL.
Future<GetWebAclWafv2Result> getWebAclWafv2(
  GetWebAclWafv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getWebAcl:getWebAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAclWafv2Result.fromMap(result);
}
