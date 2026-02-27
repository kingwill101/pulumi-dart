import 'package:pulumi/pulumi.dart' hide Config;
import 'get_policy_tag_args.dart';
import 'get_policy_tag_result.dart';

/// Gets a policy tag.
Future<GetPolicyTagResult> getPolicyTag(
  GetPolicyTagArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getPolicyTag',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagResult.fromMap(result);
}
