import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_appengine_v1beta_args.dart';
import 'get_version_appengine_v1beta_result.dart';

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
Future<GetVersionAppengineV1betaResult> getVersionAppengineV1beta(
  GetVersionAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionAppengineV1betaResult.fromMap(result);
}
