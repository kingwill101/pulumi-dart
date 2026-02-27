import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experience_args.dart';
import 'get_experience_result.dart';

/// Provides details about a specific Amazon Kendra Experience.
Future<GetExperienceResult> getExperience(
  GetExperienceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getExperience:getExperience',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperienceResult.fromMap(result);
}
