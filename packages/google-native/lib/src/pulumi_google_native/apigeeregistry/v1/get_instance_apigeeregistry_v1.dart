import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_apigeeregistry_v1_args.dart';
import 'get_instance_apigeeregistry_v1_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceApigeeregistryV1Result> getInstanceApigeeregistryV1(
  GetInstanceApigeeregistryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceApigeeregistryV1Result.fromMap(result);
}
