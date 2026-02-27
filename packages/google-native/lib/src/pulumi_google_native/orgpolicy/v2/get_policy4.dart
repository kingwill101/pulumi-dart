import 'package:pulumi/pulumi.dart' hide Config;
import 'get_policy_args4.dart';
import 'get_policy_result4.dart';

/// Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.
Future<GetPolicyResult4> getPolicy4(
  GetPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult4.fromMap(result);
}
