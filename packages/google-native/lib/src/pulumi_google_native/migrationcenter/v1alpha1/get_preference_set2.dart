import 'package:pulumi/pulumi.dart';
import 'get_preference_set_args2.dart';
import 'get_preference_set_result2.dart';

/// Gets the details of a preference set.
Future<GetPreferenceSetResult2> getPreferenceSet2(
  GetPreferenceSetArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getPreferenceSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPreferenceSetResult2.fromMap(result);
}
