import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_source_migrationcenter_v1alpha1_args.dart';
import 'get_source_migrationcenter_v1alpha1_result.dart';

/// Gets the details of a source.
Future<GetSourceMigrationcenterV1alpha1Result> getSourceMigrationcenterV1alpha1(
  GetSourceMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceMigrationcenterV1alpha1Result.fromMap(result);
}
