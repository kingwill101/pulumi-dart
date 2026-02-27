import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_firebaserules_v1_args.dart';
import 'get_release_firebaserules_v1_result.dart';

/// Get a `Release` by name.
Future<GetReleaseFirebaserulesV1Result> getReleaseFirebaserulesV1(
  GetReleaseFirebaserulesV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaserules/v1:getRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseFirebaserulesV1Result.fromMap(result);
}
