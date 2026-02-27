import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_featurestore_entitytype_iam_policy_args.dart';
import 'get_ai_featurestore_entitytype_iam_policy_result.dart';

Future<GetAiFeaturestoreEntitytypeIamPolicyResult>
    getAiFeaturestoreEntitytypeIamPolicy(
  GetAiFeaturestoreEntitytypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreEntitytypeIamPolicy:getAiFeaturestoreEntitytypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeaturestoreEntitytypeIamPolicyResult.fromMap(result);
}
