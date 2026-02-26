import 'package:pulumi/pulumi.dart';
import 'get_policy_tag_args2.dart';
import 'get_policy_tag_result2.dart';

/// Gets a policy tag.
Future<GetPolicyTagResult2> getPolicyTag2(
  GetPolicyTagArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getPolicyTag',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagResult2.fromMap(result);
}
