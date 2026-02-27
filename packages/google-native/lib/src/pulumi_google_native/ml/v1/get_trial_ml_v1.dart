import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trial_ml_v1_args.dart';
import 'get_trial_ml_v1_result.dart';

/// Gets a trial.
Future<GetTrialMlV1Result> getTrialMlV1(
  GetTrialMlV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialMlV1Result.fromMap(result);
}
