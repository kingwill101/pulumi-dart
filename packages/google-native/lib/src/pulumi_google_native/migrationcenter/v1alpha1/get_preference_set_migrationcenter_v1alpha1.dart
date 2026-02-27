import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_preference_set_migrationcenter_v1alpha1_args.dart';
import 'get_preference_set_migrationcenter_v1alpha1_result.dart';

/// Gets the details of a preference set.
Future<GetPreferenceSetMigrationcenterV1alpha1Result>
    getPreferenceSetMigrationcenterV1alpha1(
  GetPreferenceSetMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getPreferenceSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPreferenceSetMigrationcenterV1alpha1Result.fromMap(result);
}
