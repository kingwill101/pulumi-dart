import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_compute_v1_args.dart';
import 'get_address_compute_v1_result.dart';

/// Returns the specified address resource.
Future<GetAddressComputeV1Result> getAddressComputeV1(
  GetAddressComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressComputeV1Result.fromMap(result);
}
