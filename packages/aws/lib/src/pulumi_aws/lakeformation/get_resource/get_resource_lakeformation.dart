import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_lakeformation_args.dart';
import 'get_resource_lakeformation_result.dart';

/// Provides details about a Lake Formation resource.
Future<GetResourceLakeformationResult> getResourceLakeformation(
  GetResourceLakeformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getResource:getResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceLakeformationResult.fromMap(result);
}
