import 'package:pulumi/pulumi.dart' hide Config;
import 'get_preference_set_args.dart';
import 'get_preference_set_result.dart';

/// Gets the details of a preference set.
Future<GetPreferenceSetResult> getPreferenceSet(
  GetPreferenceSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getPreferenceSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPreferenceSetResult.fromMap(result);
}
