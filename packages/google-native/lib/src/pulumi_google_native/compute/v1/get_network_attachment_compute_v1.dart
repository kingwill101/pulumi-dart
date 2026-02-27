import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_attachment_compute_v1_args.dart';
import 'get_network_attachment_compute_v1_result.dart';

/// Returns the specified NetworkAttachment resource in the given scope.
Future<GetNetworkAttachmentComputeV1Result> getNetworkAttachmentComputeV1(
  GetNetworkAttachmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentComputeV1Result.fromMap(result);
}
