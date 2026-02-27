import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_attachment_args.dart';
import 'get_network_attachment_result.dart';

/// Get a specific network attachment within a region. For more information see
/// the [official documentation](https://cloud.google.com/vpc/docs/about-network-attachments)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/get).
Future<GetNetworkAttachmentResult> getNetworkAttachment(
  GetNetworkAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkAttachment:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult.fromMap(result);
}
