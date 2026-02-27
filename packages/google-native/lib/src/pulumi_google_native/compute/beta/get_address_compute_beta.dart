import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_compute_beta_args.dart';
import 'get_address_compute_beta_result.dart';

/// Returns the specified address resource.
Future<GetAddressComputeBetaResult> getAddressComputeBeta(
  GetAddressComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressComputeBetaResult.fromMap(result);
}
