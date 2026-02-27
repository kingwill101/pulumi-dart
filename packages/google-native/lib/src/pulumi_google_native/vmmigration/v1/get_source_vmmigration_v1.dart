import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_source_vmmigration_v1_args.dart';
import 'get_source_vmmigration_v1_result.dart';

/// Gets details of a single Source.
Future<GetSourceVmmigrationV1Result> getSourceVmmigrationV1(
  GetSourceVmmigrationV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceVmmigrationV1Result.fromMap(result);
}
