import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_run_datalineage_v1_args.dart';
import 'get_run_datalineage_v1_result.dart';

/// Gets the details of the specified run.
Future<GetRunDatalineageV1Result> getRunDatalineageV1(
  GetRunDatalineageV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunDatalineageV1Result.fromMap(result);
}
