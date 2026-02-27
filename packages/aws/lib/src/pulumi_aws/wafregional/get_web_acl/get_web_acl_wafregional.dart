import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_acl_wafregional_args.dart';
import 'get_web_acl_wafregional_result.dart';

/// `aws.wafregional.WebAcl` Retrieves a WAF Regional Web ACL Resource Id.
Future<GetWebAclWafregionalResult> getWebAclWafregional(
  GetWebAclWafregionalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getWebAcl:getWebAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAclWafregionalResult.fromMap(result);
}
