import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_source_vmmigration_v1alpha1_args.dart';
import 'get_source_vmmigration_v1alpha1_result.dart';

/// Gets details of a single Source.
Future<GetSourceVmmigrationV1alpha1Result> getSourceVmmigrationV1alpha1(
  GetSourceVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceVmmigrationV1alpha1Result.fromMap(result);
}
