import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_attachment_args2.dart';
import 'get_network_attachment_result2.dart';

/// Returns the specified NetworkAttachment resource in the given scope.
Future<GetNetworkAttachmentResult2> getNetworkAttachment2(
  GetNetworkAttachmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult2.fromMap(result);
}
