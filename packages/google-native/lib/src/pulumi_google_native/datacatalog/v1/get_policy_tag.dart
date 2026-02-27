import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_tag_args.dart';
import 'get_policy_tag_result.dart';

/// Gets a policy tag.
Future<GetPolicyTagResult> getPolicyTag(
  GetPolicyTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getPolicyTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagResult.fromMap(result);
}
