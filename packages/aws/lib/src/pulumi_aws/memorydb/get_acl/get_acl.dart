import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acl_args.dart';
import 'get_acl_result.dart';

/// Provides information about a MemoryDB ACL.
Future<GetAclResult> getAcl(
  GetAclArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getAcl:getAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclResult.fromMap(result);
}
