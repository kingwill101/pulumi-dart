import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_address_compute_beta_args.dart';
import 'get_global_address_compute_beta_result.dart';

/// Returns the specified address resource.
Future<GetGlobalAddressComputeBetaResult> getGlobalAddressComputeBeta(
  GetGlobalAddressComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressComputeBetaResult.fromMap(result);
}
