import 'package:pulumi/pulumi.dart';
import 'get_web_acl_args2.dart';
import 'get_web_acl_result2.dart';

/// `aws.wafregional.WebAcl` Retrieves a WAF Regional Web ACL Resource Id.
Future<GetWebAclResult2> getWebAcl2(
  GetWebAclArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getWebAcl:getWebAcl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult2.fromMap(result);
}
