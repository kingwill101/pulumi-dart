import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_secretmanager_v1beta1_args.dart';
import 'get_secret_secretmanager_v1beta1_result.dart';

/// Gets metadata for a given Secret.
Future<GetSecretSecretmanagerV1beta1Result> getSecretSecretmanagerV1beta1(
  GetSecretSecretmanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1beta1:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretSecretmanagerV1beta1Result.fromMap(result);
}
