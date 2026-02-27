import 'package:pulumi/pulumi.dart' hide Config;
import 'get_archive_deployment_args.dart';
import 'get_archive_deployment_result.dart';

/// Gets the specified ArchiveDeployment.
Future<GetArchiveDeploymentResult> getArchiveDeployment(
  GetArchiveDeploymentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getArchiveDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetArchiveDeploymentResult.fromMap(result);
}
