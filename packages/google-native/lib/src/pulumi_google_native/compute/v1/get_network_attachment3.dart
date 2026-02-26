import 'package:pulumi/pulumi.dart';
import 'get_network_attachment_args3.dart';
import 'get_network_attachment_result3.dart';

/// Returns the specified NetworkAttachment resource in the given scope.
Future<GetNetworkAttachmentResult3> getNetworkAttachment3(
  GetNetworkAttachmentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult3.fromMap(result);
}
