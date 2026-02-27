import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_apigeeregistry_v1_args.dart';
import 'get_api_apigeeregistry_v1_result.dart';

/// Returns a specified API.
Future<GetApiApigeeregistryV1Result> getApiApigeeregistryV1(
  GetApiApigeeregistryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiApigeeregistryV1Result.fromMap(result);
}
