import 'package:pulumi/pulumi.dart' hide Config;
import 'get_attestor_args2.dart';
import 'get_attestor_result2.dart';

/// Gets an attestor. Returns NOT_FOUND if the attestor does not exist.
Future<GetAttestorResult2> getAttestor2(
  GetAttestorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestor',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttestorResult2.fromMap(result);
}
