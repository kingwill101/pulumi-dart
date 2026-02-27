import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trial_aiplatform_v1beta1_args.dart';
import 'get_trial_aiplatform_v1beta1_result.dart';

/// Gets a Trial.
Future<GetTrialAiplatformV1beta1Result> getTrialAiplatformV1beta1(
  GetTrialAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialAiplatformV1beta1Result.fromMap(result);
}
