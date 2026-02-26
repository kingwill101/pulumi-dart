import 'package:pulumi/pulumi.dart';
import 'get_web_acl_args3.dart';
import 'get_web_acl_result3.dart';

/// Retrieves the summary of a WAFv2 Web ACL.
Future<GetWebAclResult3> getWebAcl3(
  GetWebAclArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getWebAcl:getWebAcl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult3.fromMap(result);
}
