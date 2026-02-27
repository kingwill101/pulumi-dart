import 'package:pulumi/pulumi.dart';
import 'get_acl_args.dart';
import 'get_acl_result.dart';

/// Provides information about a MemoryDB ACL.
Future<GetAclResult> getAcl(
  GetAclArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getAcl:getAcl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAclResult.fromMap(result);
}
