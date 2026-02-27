import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_attachment_args.dart';
import 'get_network_attachment_result.dart';

/// Returns the specified NetworkAttachment resource in the given scope.
Future<GetNetworkAttachmentResult> getNetworkAttachment(
  GetNetworkAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult.fromMap(result);
}
