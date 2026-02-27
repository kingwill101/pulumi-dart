import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_address_compute_v1_args.dart';
import 'get_global_address_compute_v1_result.dart';

/// Returns the specified address resource.
Future<GetGlobalAddressComputeV1Result> getGlobalAddressComputeV1(
  GetGlobalAddressComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressComputeV1Result.fromMap(result);
}
