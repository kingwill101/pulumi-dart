import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_compute_v1_args.dart';
import 'get_disk_compute_v1_result.dart';

/// Returns the specified persistent disk.
Future<GetDiskComputeV1Result> getDiskComputeV1(
  GetDiskComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskComputeV1Result.fromMap(result);
}
