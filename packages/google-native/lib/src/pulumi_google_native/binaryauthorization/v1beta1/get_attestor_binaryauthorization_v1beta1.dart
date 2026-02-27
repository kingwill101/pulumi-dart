import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attestor_binaryauthorization_v1beta1_args.dart';
import 'get_attestor_binaryauthorization_v1beta1_result.dart';

/// Gets an attestor. Returns NOT_FOUND if the attestor does not exist.
Future<GetAttestorBinaryauthorizationV1beta1Result>
    getAttestorBinaryauthorizationV1beta1(
  GetAttestorBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorBinaryauthorizationV1beta1Result.fromMap(result);
}
