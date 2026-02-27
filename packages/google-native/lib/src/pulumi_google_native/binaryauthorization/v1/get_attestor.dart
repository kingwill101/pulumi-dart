import 'package:pulumi/pulumi.dart' hide Config;
import 'get_attestor_args.dart';
import 'get_attestor_result.dart';

/// Gets an attestor. Returns `NOT_FOUND` if the attestor does not exist.
Future<GetAttestorResult> getAttestor(
  GetAttestorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getAttestor',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttestorResult.fromMap(result);
}
