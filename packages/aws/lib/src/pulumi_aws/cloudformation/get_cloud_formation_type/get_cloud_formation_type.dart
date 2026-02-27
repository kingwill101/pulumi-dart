import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_formation_type_args.dart';
import 'get_cloud_formation_type_result.dart';

/// Provides details about a CloudFormation Type.
Future<GetCloudFormationTypeResult> getCloudFormationType(
  GetCloudFormationTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getCloudFormationType:getCloudFormationType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudFormationTypeResult.fromMap(result);
}
