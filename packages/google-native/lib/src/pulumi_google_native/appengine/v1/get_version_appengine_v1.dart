import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_appengine_v1_args.dart';
import 'get_version_appengine_v1_result.dart';

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
Future<GetVersionAppengineV1Result> getVersionAppengineV1(
  GetVersionAppengineV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionAppengineV1Result.fromMap(result);
}
