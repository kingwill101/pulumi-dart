import 'package:pulumi/pulumi.dart' hide Config;
import 'get_trial_args.dart';
import 'get_trial_result.dart';

/// Gets a Trial.
Future<GetTrialResult> getTrial(
  GetTrialArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrial',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrialResult.fromMap(result);
}
