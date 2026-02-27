import 'package:pulumi/pulumi.dart';
import 'get_cloud_formation_type_args.dart';
import 'get_cloud_formation_type_result.dart';

/// Provides details about a CloudFormation Type.
Future<GetCloudFormationTypeResult> getCloudFormationType(
  GetCloudFormationTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getCloudFormationType:getCloudFormationType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudFormationTypeResult.fromMap(result);
}
