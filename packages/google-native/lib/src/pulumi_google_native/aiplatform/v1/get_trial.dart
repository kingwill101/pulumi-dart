import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trial_args.dart';
import 'get_trial_result.dart';

/// Gets a Trial.
Future<GetTrialResult> getTrial(
  GetTrialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialResult.fromMap(result);
}
