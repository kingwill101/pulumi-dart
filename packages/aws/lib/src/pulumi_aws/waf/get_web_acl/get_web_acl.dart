import 'package:pulumi/pulumi.dart';
import 'get_web_acl_args.dart';
import 'get_web_acl_result.dart';

/// `aws.waf.WebAcl` Retrieves a WAF Web ACL Resource Id.
Future<GetWebAclResult> getWebAcl(
  GetWebAclArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getWebAcl:getWebAcl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult.fromMap(result);
}
