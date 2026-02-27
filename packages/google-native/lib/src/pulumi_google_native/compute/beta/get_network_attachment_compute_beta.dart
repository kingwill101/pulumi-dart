import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_attachment_compute_beta_args.dart';
import 'get_network_attachment_compute_beta_result.dart';

/// Returns the specified NetworkAttachment resource in the given scope.
Future<GetNetworkAttachmentComputeBetaResult> getNetworkAttachmentComputeBeta(
  GetNetworkAttachmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentComputeBetaResult.fromMap(result);
}
