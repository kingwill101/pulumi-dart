import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_archive_deployment_args.dart';
import 'get_archive_deployment_result.dart';

/// Gets the specified ArchiveDeployment.
Future<GetArchiveDeploymentResult> getArchiveDeployment(
  GetArchiveDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getArchiveDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArchiveDeploymentResult.fromMap(result);
}
